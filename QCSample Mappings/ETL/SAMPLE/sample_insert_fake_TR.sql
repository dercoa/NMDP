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
c.* from (
	select
		ml.MASTER_LOT_ID || '.' || lpad(nvl(max(cast(substr(sample_id, 8, 6) as number)), 0) + 1, 6, '0') || nvl(max(replace(substr(sample_id, -1, 1), 'J', 'N')), 'W') as SAMPLE_ID, -- only whole blood master lots could not have samples
		ml.MASTER_LOT_IID,
		'N' as ORIGINAL_SAMPLE_IND,
		ml.MASTER_LOT_ID || '.' || lpad(nvl(max(cast(substr(sample_id, 8, 6) as number)), 0) + 1, 6, '0') || nvl(max(replace(substr(sample_id, -1, 1), 'J', 'N')), 'W') as SHIPPING_LABEL_ID,
		max(replace(nvl(s.sample_type_cde, 'WB'), 'BC', 'A')) as SAMPLE_TYPE_CDE,
		'MASTER' as SAMPLE_CATEGORY_CDE,
		'DEPLETED' as SAMPLE_STATUS_CDE,
		null as SAMPLE_COLL_MEDIUM_CDE,
		null as SAMPLE_CREATION_DTE,
		null as LAB_RECEIVED_DTE,
		null as SAMPLE_EXTRACTED_DTE,
		null as SAMPLE_POOLED_DTE,
		null as EXPIRATION_DTE,
		null as STORAGE_ENVIRON_NME,
		null as STORAGE_UNIT_NME,
		null as SHELF_NUM,
		null as BOX_NUM,
		null as SLOT_LOCATION_NME,
		null as SAMPLE_UNIT_VOL,
		null as SAMPLE_UNIT_UOM,
		null as SAMPLES_STORED_QTY,
		null as SAMPLE_STORED_QTY_UOM,
		null as CONCENTRATION_QTY,
		null as CONCENTRATION_QTY_UOM,
		null as SAMPLE_LABELED_BY,
		'Fake Sample record to link to historical test results' as COMMENT_TXT,
		SYSTIMESTAMP as CREATE_TS,
		'BODS_LOAD' as CREATE_BY_ID,
		SYSTIMESTAMP as UPDATE_TS,
		'BODS_LOAD' as UPDATE_BY_ID
		from QCSAMPLE.MASTER_LOT ml
		left join QCSAMPLE.SAMPLE s on ml.MASTER_LOT_IID = s.MASTER_LOT_IID
		group by ml.MASTER_LOT_IID, ml.MASTER_LOT_ID
)c;
commit;

