insert into QCSAMPLE.SAMPLE
(
SAMPLE_IID,
SAMPLE_ID,
MASTER_LOT_IID,
ORIGINAL_SAMPLE_IND,
SHIPPING_LABEL_ID,
SAMPLE_TYPE_CDE,
SAMPLE_CATEGORY_CDE,
SAMPLE_STATUS_CDE,
SAMPLE_COLL_MEDIUM_CDE,
SAMPLE_CREATION_DTE,
LAB_RECEIVED_DTE,
SAMPLE_EXTRACTED_DTE,
SAMPLE_POOLED_DTE,
EXPIRATION_DTE,
STORAGE_ENVIRON_NME,
STORAGE_UNIT_NME,
SHELF_NUM,
BOX_NUM,
SLOT_LOCATION_NME,
SAMPLE_UNIT_VOL,
SAMPLE_UNIT_UOM,
SAMPLES_STORED_QTY,
SAMPLE_STORED_QTY_UOM,
CONCENTRATION_QTY,
CONCENTRATION_QTY_UOM,
SAMPLE_LABELED_BY,
COMMENT_TXT,
CREATE_TS,
CREATE_BY_ID,
UPDATE_TS,
UPDATE_BY_ID
)
select 
QCSAMPLE.SEQ_SAMPLE.NEXTVAL,
ml_wb_1.MASTER_LOT_ID || '.' || lpad(l.ll,6,'0') || 'W' as SAMPLE_ID,
ml_wb_1.MASTER_LOT_IID,
'Y' as ORIGINAL_SAMPLE_IND,
null as SHIPPING_LABEL_ID,
e.ML_SAMPLE_TYPE as SAMPLE_TYPE_CDE,
'MASTER' as SAMPLE_CATEGORY_CDE,
'ACTIVE' as SAMPLE_STATUS_CDE,
e.ML_MEDIUM as SAMPLE_COLL_MEDIUM_CDE,
e.Aliquot_Date as SAMPLE_CREATION_DTE,
null as LAB_RECEIVED_DTE,
null as SAMPLE_EXTRACTED_DTE,
null as SAMPLE_POOLED_DTE,
null as EXPIRATION_DTE,
e.Environment_Name as STORAGE_ENVIRON_NME,
e.STORAGE_UNIT as STORAGE_UNIT_NME,
null as SHELF_NUM,
e.BOX_NO as BOX_NUM,
e.START_BOX_LOCATION as SLOT_LOCATION_NME,
case when ROW_NUMBER() OVER(partition by ml_wb_1.master_lot_iid order by ml_wb_1.master_lot_iid) <= nvl(No_of_Vials1,0) 
  then Volume_In_Vials1
  else case when ROW_NUMBER() OVER(partition by ml_wb_1.master_lot_iid order by ml_wb_1.master_lot_iid) <= nvl(No_of_Vials1, 0) + nvl(No_of_Vials2, 0)
    then Volume_In_Vials2
    else Volume_In_Small_Vials
    end
  end as SAMPLE_UNIT_VOL,
'mL' as SAMPLE_UNIT_UOM,
null as SAMPLES_STORED_QTY,
null as SAMPLE_STORED_QTY_UOM,
null as CONCENTRATION_QTY,
null as CONCENTRATION_QTY_UOM,
null as SAMPLE_LABELED_BY,
null as COMMENT_TXT,
SYSTIMESTAMP as CREATE_TS,
'BODS_LOAD' as CREATE_BY_ID,
SYSTIMESTAMP as UPDATE_TS,
'BODS_LOAD' as UPDATE_BY_ID
from ETL_STAGE.QCSAMPLE_INV_EXCEL_WB_1 e
inner join MASTER_LOT ml_dna on cast(ml_dna.MASTER_LOT_ID as number) = cast(e.QC_MASTER as number)
inner join (
    select sample_source_iid, max(master_lot_iid) as master_lot_iid
    from QCSAMPLE.MASTER_LOT
    group by sample_source_iid
) max_ml on ml_dna.sample_source_iid = max_ml.sample_source_iid
inner join QCSAMPLE.MASTER_LOT ml_wb_1 on ml_wb_1.master_lot_iid = max_ml.master_lot_iid
left join (select level ll from dual d
connect by level <=10000) l on l.ll <= e.TOTAL_VIALS;
commit;


