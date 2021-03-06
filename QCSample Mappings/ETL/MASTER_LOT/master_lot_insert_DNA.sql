insert into QCSAMPLE.MASTER_LOT (
MASTER_LOT_IID,
MASTER_LOT_ID,
SAMPLE_SOURCE_IID,
MASTER_LOT_STATUS_CDE,
SAMPLE_COLLECTION_DTE,
SAMPLE_SOURCE_AGE_NUM,
ORIGINAL_QTY,
ORIGINAL_QTY_UOM,
USED_QTY,
USED_QTY_UOM,
ESTIMATED_SAMPLE_QTY,
ESTIMATED_SAMPLE_QTY_UOM,
COMMENT_TXT,
CREATE_TS,
CREATE_BY_ID,
UPDATE_TS,
UPDATE_BY_ID
)
select QCSAMPLE.SEQ_MASTER_LOT.NEXTVAL,
lpad(replace(e.QC_MASTER_LOT_ID, 'QC', ''),6,'0') as MASTER_LOT_ID,
ss.SAMPLE_SOURCE_IID,
case when e.Active = 1 then 'ACTIVE' else 'INACTIVE' end as MASTER_LOT_STATUS_CDE,
e.COLLECTION_DATE as SAMPLE_COLLECTION_DTE,
null as SAMPLE_SOURCE_AGE_NUM,
e.TOTAL_VIALS as ORIGINAL_QTY,
'unit' as ORIGINAL_QTY_UOM,
nvl(e.TOTAL_VIALS, 0) - nvl(e.VIALS_LEFT,0) as USED_QTY,
'unit' as USED_QTY_UOM,
TOTAL_POSS_SWABS as ESTIMATED_SAMPLE_QTY,
null as ESTIMATED_SAMPLE_QTY_UOM,
'Box # ' || e.BOX_NO || ', Start Box Location ' || e.START_BOX_LOC as COMMENT_TXT,
SYSTIMESTAMP as CREATE_TS,
'BODS_LOAD' as CREATE_BY_ID,
SYSTIMESTAMP as UPDATE_TS,
'BODS_LOAD' as UPDATE_BY_ID
from ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA e
inner join QCSAMPLE.SAMPLE_SOURCE ss on 'QC_DRIVE' || nvl(cast(e.SAMPLE_ID as number(9)), e.QC_MASTER_LOT_ID) = ss.SAMPLE_SOURCE_ID
where e.Active = 1;
commit;