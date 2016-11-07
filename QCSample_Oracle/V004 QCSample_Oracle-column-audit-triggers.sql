create or replace TRIGGER TR_MASTER_LOT_COLUMN_AUDIT 
BEFORE DELETE OR INSERT OR UPDATE ON MASTER_LOT 
REFERENCING OLD AS OLD NEW AS NEW 
FOR EACH ROW
BEGIN

if INSERTING then
insert into QCSAMPLE.MASTER_LOT_AUD(MASTER_LOT_AUD_IID, CHANGE_BY_ID , CHANGE_TS , CHANGE_TYPE_CDE , MASTER_LOT_ID, COLUMN_NME , NEW_VALUE_TXT , OLD_VALUE_TXT)
select SEQ_MASTER_LOT_AUD.NEXTVAL, nvl(:new.CREATE_BY_ID,USER),   SYSTIMESTAMP, 'I', :new.MASTER_LOT_ID, COLUMN_NME, NEW_VALUE_TXT, NULL
from (
  select 'COMMENT_TXT' as COLUMN_NME, cast(:new.COMMENT_TXT as varchar2(4000)) as NEW_VALUE_TXT from dual
  union all
  select 'ESTIMATED_SAMPLE_QTY', cast(:new.ESTIMATED_SAMPLE_QTY as varchar2(4000)) from dual
  union all
  select 'ESTIMATED_SAMPLE_QTY_UOM', cast(:new.ESTIMATED_SAMPLE_QTY_UOM as varchar2(4000)) from dual
  union all
  select 'MASTER_LOT_STATUS_CDE', cast(:new.MASTER_LOT_STATUS_CDE as varchar2(4000)) from dual
  union all
  select 'ORIGINAL_QTY', cast(:new.ORIGINAL_QTY as varchar2(4000)) from dual
  union all
  select 'ORIGINAL_QTY_UOM', cast(:new.ORIGINAL_QTY_UOM as varchar2(4000)) from dual
  union all
  select 'SAMPLE_COLLECTION_DTE', cast(:new.SAMPLE_COLLECTION_DTE as varchar2(4000)) from dual
  union all
  select 'SAMPLE_COLL_MEDIUM_CDE', cast(:new.SAMPLE_COLL_MEDIUM_CDE as varchar2(4000)) from dual
  union all
  select 'SAMPLE_SOURCE_AGE', cast(:new.SAMPLE_SOURCE_AGE as varchar2(4000)) from dual
  union all
  select 'SAMPLE_SUBJECT_GUID', cast(:new.SAMPLE_SUBJECT_GUID as varchar2(4000)) from dual
  union all
  select 'USED_QTY', cast(:new.USED_QTY as varchar2(4000)) from dual
  union all
  select 'USED_QTY_UOM', cast(:new.USED_QTY_UOM as varchar2(4000)) from dual
);
end if;

if UPDATING then
insert into QCSAMPLE.MASTER_LOT_AUD(MASTER_LOT_AUD_IID, CHANGE_BY_ID , CHANGE_TS , CHANGE_TYPE_CDE , MASTER_LOT_ID, COLUMN_NME , NEW_VALUE_TXT , OLD_VALUE_TXT)
select SEQ_MASTER_LOT_AUD.NEXTVAL, nvl(:new.UPDATE_BY_ID, USER), SYSTIMESTAMP, 'U', :new.MASTER_LOT_ID, COLUMN_NME, NEW_VALUE_TXT, OLD_VALUE_TXT
from (
  select 'COMMENT_TXT' as COLUMN_NME, cast(:new.COMMENT_TXT as varchar2(4000)) as NEW_VALUE_TXT, cast(:old.COMMENT_TXT as varchar2(4000)) as OLD_VALUE_TXT from dual
  where (:new.COMMENT_TXT is null and :old.COMMENT_TXT is not null) or (:new.COMMENT_TXT is not null and :old.COMMENT_TXT is null) or (:new.COMMENT_TXT <> :old.COMMENT_TXT)
  union all
  select 'ESTIMATED_SAMPLE_QTY', cast(:new.ESTIMATED_SAMPLE_QTY as varchar2(4000)), cast(:old.ESTIMATED_SAMPLE_QTY as varchar2(4000)) from dual
  where (:new.ESTIMATED_SAMPLE_QTY is null and :old.ESTIMATED_SAMPLE_QTY is not null) or (:new.ESTIMATED_SAMPLE_QTY is not null and :old.ESTIMATED_SAMPLE_QTY is null) or (:new.ESTIMATED_SAMPLE_QTY <> :old.ESTIMATED_SAMPLE_QTY)
  union all
  select 'ESTIMATED_SAMPLE_QTY_UOM', cast(:new.ESTIMATED_SAMPLE_QTY_UOM as varchar2(4000)), cast(:old.ESTIMATED_SAMPLE_QTY_UOM as varchar2(4000)) from dual
  where (:new.ESTIMATED_SAMPLE_QTY_UOM is null and :old.ESTIMATED_SAMPLE_QTY_UOM is not null) or (:new.ESTIMATED_SAMPLE_QTY_UOM is not null and :old.ESTIMATED_SAMPLE_QTY_UOM is null) or (:new.ESTIMATED_SAMPLE_QTY_UOM <> :old.ESTIMATED_SAMPLE_QTY_UOM)
  union all
  select 'MASTER_LOT_STATUS_CDE', cast(:new.MASTER_LOT_STATUS_CDE as varchar2(4000)), cast(:old.MASTER_LOT_STATUS_CDE as varchar2(4000)) from dual
  where (:new.MASTER_LOT_STATUS_CDE is null and :old.MASTER_LOT_STATUS_CDE is not null) or (:new.MASTER_LOT_STATUS_CDE is not null and :old.MASTER_LOT_STATUS_CDE is null) or (:new.MASTER_LOT_STATUS_CDE <> :old.MASTER_LOT_STATUS_CDE)
  union all
  select 'ORIGINAL_QTY', cast(:new.ORIGINAL_QTY as varchar2(4000)), cast(:old.ORIGINAL_QTY as varchar2(4000)) from dual
  where (:new.ORIGINAL_QTY is null and :old.ORIGINAL_QTY is not null) or (:new.ORIGINAL_QTY is not null and :old.ORIGINAL_QTY is null) or (:new.ORIGINAL_QTY <> :old.ORIGINAL_QTY)
  union all
  select 'ORIGINAL_QTY_UOM', cast(:new.ORIGINAL_QTY_UOM as varchar2(4000)), cast(:old.ORIGINAL_QTY_UOM as varchar2(4000)) from dual
  where (:new.ORIGINAL_QTY_UOM is null and :old.ORIGINAL_QTY_UOM is not null) or (:new.ORIGINAL_QTY_UOM is not null and :old.ORIGINAL_QTY_UOM is null) or (:new.ORIGINAL_QTY_UOM <> :old.ORIGINAL_QTY_UOM)
  union all
  select 'SAMPLE_COLLECTION_DTE', cast(:new.SAMPLE_COLLECTION_DTE as varchar2(4000)), cast(:old.SAMPLE_COLLECTION_DTE as varchar2(4000)) from dual
  where (:new.SAMPLE_COLLECTION_DTE is null and :old.SAMPLE_COLLECTION_DTE is not null) or (:new.SAMPLE_COLLECTION_DTE is not null and :old.SAMPLE_COLLECTION_DTE is null) or (:new.SAMPLE_COLLECTION_DTE <> :old.SAMPLE_COLLECTION_DTE)
  union all
  select 'SAMPLE_COLL_MEDIUM_CDE', cast(:new.SAMPLE_COLL_MEDIUM_CDE as varchar2(4000)), cast(:old.SAMPLE_COLL_MEDIUM_CDE as varchar2(4000)) from dual
  where (:new.SAMPLE_COLL_MEDIUM_CDE is null and :old.SAMPLE_COLL_MEDIUM_CDE is not null) or (:new.SAMPLE_COLL_MEDIUM_CDE is not null and :old.SAMPLE_COLL_MEDIUM_CDE is null) or (:new.SAMPLE_COLL_MEDIUM_CDE <> :old.SAMPLE_COLL_MEDIUM_CDE)
union all
select 'SAMPLE_SOURCE_AGE', cast(:new.SAMPLE_SOURCE_AGE as varchar2(4000)), cast(:old.SAMPLE_SOURCE_AGE as varchar2(4000)) from dual
where (:new.SAMPLE_SOURCE_AGE is null and :old.SAMPLE_SOURCE_AGE is not null) or (:new.SAMPLE_SOURCE_AGE is not null and :old.SAMPLE_SOURCE_AGE is null) or (:new.SAMPLE_SOURCE_AGE <> :old.SAMPLE_SOURCE_AGE)
union all
select 'SAMPLE_SUBJECT_GUID', cast(:new.SAMPLE_SUBJECT_GUID as varchar2(4000)), cast(:old.SAMPLE_SUBJECT_GUID as varchar2(4000)) from dual
where (:new.SAMPLE_SUBJECT_GUID is null and :old.SAMPLE_SUBJECT_GUID is not null) or (:new.SAMPLE_SUBJECT_GUID is not null and :old.SAMPLE_SUBJECT_GUID is null) or (:new.SAMPLE_SUBJECT_GUID <> :old.SAMPLE_SUBJECT_GUID)
union all
select 'USED_QTY', cast(:new.USED_QTY as varchar2(4000)), cast(:old.USED_QTY as varchar2(4000)) from dual
where (:new.USED_QTY is null and :old.USED_QTY is not null) or (:new.USED_QTY is not null and :old.USED_QTY is null) or (:new.USED_QTY <> :old.USED_QTY)
union all
select 'USED_QTY_UOM', cast(:new.USED_QTY_UOM as varchar2(4000)), cast(:old.USED_QTY_UOM as varchar2(4000)) from dual
where (:new.USED_QTY_UOM is null and :old.USED_QTY_UOM is not null) or (:new.USED_QTY_UOM is not null and :old.USED_QTY_UOM is null) or (:new.USED_QTY_UOM <> :old.USED_QTY_UOM)

);
end if;
  
if DELETING then
insert into QCSAMPLE.MASTER_LOT_AUD(MASTER_LOT_AUD_IID, CHANGE_BY_ID , CHANGE_TS , CHANGE_TYPE_CDE , MASTER_LOT_ID, COLUMN_NME , NEW_VALUE_TXT , OLD_VALUE_TXT)
select SEQ_MASTER_LOT_AUD.NEXTVAL, nvl(:old.UPDATE_BY_ID,USER),   SYSTIMESTAMP, 'D', :old.MASTER_LOT_ID, COLUMN_NME, null, OLD_VALUE_TXT
from (
  select 'COMMENT_TXT' as COLUMN_NME, cast(:old.COMMENT_TXT as varchar2(4000)) as OLD_VALUE_TXT from dual
  union all
  select 'ESTIMATED_SAMPLE_QTY', cast(:old.ESTIMATED_SAMPLE_QTY as varchar2(4000)) from dual
  union all
  select 'ESTIMATED_SAMPLE_QTY_UOM', cast(:old.ESTIMATED_SAMPLE_QTY_UOM as varchar2(4000)) from dual
  union all
  select 'MASTER_LOT_STATUS_CDE', cast(:old.MASTER_LOT_STATUS_CDE as varchar2(4000)) from dual
  union all
  select 'ORIGINAL_QTY', cast(:old.ORIGINAL_QTY as varchar2(4000)) from dual
  union all
  select 'ORIGINAL_QTY_UOM', cast(:old.ORIGINAL_QTY_UOM as varchar2(4000)) from dual
  union all
  select 'SAMPLE_COLLECTION_DTE', cast(:old.SAMPLE_COLLECTION_DTE as varchar2(4000)) from dual
  union all
  select 'SAMPLE_COLL_MEDIUM_CDE', cast(:old.SAMPLE_COLL_MEDIUM_CDE as varchar2(4000)) from dual
  union all
  select 'SAMPLE_SOURCE_AGE', cast(:old.SAMPLE_SOURCE_AGE as varchar2(4000)) from dual
  union all
  select 'SAMPLE_SUBJECT_GUID', cast(:old.SAMPLE_SUBJECT_GUID as varchar2(4000)) from dual
  union all
  select 'USED_QTY', cast(:old.USED_QTY as varchar2(4000)) from dual
  union all
  select 'USED_QTY_UOM', cast(:old.USED_QTY_UOM as varchar2(4000)) from dual
);
end if;

END;
/

create or replace TRIGGER TR_SAMPLE_COLUMN_AUDIT 
BEFORE DELETE OR INSERT OR UPDATE ON SAMPLE 
REFERENCING OLD AS OLD NEW AS NEW 
FOR EACH ROW
BEGIN

if INSERTING then
insert into QCSAMPLE.SAMPLE_AUD(SAMPLE_AUD_IID, CHANGE_BY_ID, CHANGE_TS, CHANGE_TYPE_CDE , SAMPLE_ID, COLUMN_NME, NEW_VALUE_TXT, OLD_VALUE_TXT)
select SEQ_SAMPLE_AUD.NEXTVAL, nvl(:new.CREATE_BY_ID,USER),   SYSTIMESTAMP, 'I', :new.SAMPLE_ID, COLUMN_NME, NEW_VALUE_TXT, NULL
from (

select 'BOX_NUM' as COLUMN_NME, cast(:new.BOX_NUM as varchar2(4000)) as NEW_VALUE_TXT from dual
union all
select 'COMMENT_TXT', cast(:new.COMMENT_TXT as varchar2(4000)) from dual
union all
select 'CONCENTRATION_QTY', cast(:new.CONCENTRATION_QTY as varchar2(4000)) from dual
union all
select 'CONCENTRATION_QTY_UOM', cast(:new.CONCENTRATION_QTY_UOM as varchar2(4000)) from dual
union all
select 'EXPIRATION_DTE', cast(:new.EXPIRATION_DTE as varchar2(4000)) from dual
union all
select 'LAB_RECEIVED_DTE', cast(:new.LAB_RECEIVED_DTE as varchar2(4000)) from dual
union all
select 'MASTER_LOT_ID', cast(:new.MASTER_LOT_ID as varchar2(4000)) from dual
union all
select 'ORIGINAL_SAMPLE_IND', cast(:new.ORIGINAL_SAMPLE_IND as varchar2(4000)) from dual
union all
select 'SAMPLES_SENT_QTY', cast(:new.SAMPLES_SENT_QTY as varchar2(4000)) from dual
union all
select 'SAMPLES_STORED_QTY', cast(:new.SAMPLES_STORED_QTY as varchar2(4000)) from dual
union all
select 'SAMPLE_CATEGORY_CDE', cast(:new.SAMPLE_CATEGORY_CDE as varchar2(4000)) from dual
union all
select 'SAMPLE_COLL_MEDIUM_CDE', cast(:new.SAMPLE_COLL_MEDIUM_CDE as varchar2(4000)) from dual
union all
select 'SAMPLE_CREATION_DTE', cast(:new.SAMPLE_CREATION_DTE as varchar2(4000)) from dual
union all
select 'SAMPLE_EXTRACTED_DTE', cast(:new.SAMPLE_EXTRACTED_DTE as varchar2(4000)) from dual
union all
select 'SAMPLE_LABELED_BY', cast(:new.SAMPLE_LABELED_BY as varchar2(4000)) from dual
union all
select 'SAMPLE_POOLED_DTE', cast(:new.SAMPLE_POOLED_DTE as varchar2(4000)) from dual
union all
select 'SAMPLE_STATUS_CDE', cast(:new.SAMPLE_STATUS_CDE as varchar2(4000)) from dual
union all
select 'SAMPLE_STORED_QTY_UOM', cast(:new.SAMPLE_STORED_QTY_UOM as varchar2(4000)) from dual
union all
select 'SAMPLE_TYPE_CDE', cast(:new.SAMPLE_TYPE_CDE as varchar2(4000)) from dual
union all
select 'SAMPLE_UNIT_UOM', cast(:new.SAMPLE_UNIT_UOM as varchar2(4000)) from dual
union all
select 'SAMPLE_UNIT_VOL', cast(:new.SAMPLE_UNIT_VOL as varchar2(4000)) from dual
union all
select 'SAMPLE_USED_QTY_UOM', cast(:new.SAMPLE_USED_QTY_UOM as varchar2(4000)) from dual
union all
select 'SHELF_NUM', cast(:new.SHELF_NUM as varchar2(4000)) from dual
union all
select 'SHIPPING_LABEL_ID', cast(:new.SHIPPING_LABEL_ID as varchar2(4000)) from dual
union all
select 'SLOT_NUM', cast(:new.SLOT_NUM as varchar2(4000)) from dual
union all
select 'STORAGE_ENVIRON_NME', cast(:new.STORAGE_ENVIRON_NME as varchar2(4000)) from dual
union all
select 'STORAGE_UNIT_NME', cast(:new.STORAGE_UNIT_NME as varchar2(4000)) from dual

);
end if;

if UPDATING then
insert into QCSAMPLE.SAMPLE_AUD(SAMPLE_AUD_IID, CHANGE_BY_ID , CHANGE_TS , CHANGE_TYPE_CDE , SAMPLE_ID, COLUMN_NME , NEW_VALUE_TXT , OLD_VALUE_TXT)
select SEQ_SAMPLE_AUD.NEXTVAL, nvl(:new.UPDATE_BY_ID, USER), SYSTIMESTAMP, 'U', :new.SAMPLE_ID, COLUMN_NME, NEW_VALUE_TXT, OLD_VALUE_TXT
from (
select 'BOX_NUM' as COLUMN_NME, cast(:new.BOX_NUM as varchar2(4000)) as NEW_VALUE_TXT, cast(:old.BOX_NUM as varchar2(4000)) as OLD_VALUE_TXT from dual
where (:new.BOX_NUM is null and :old.BOX_NUM is not null) or (:new.BOX_NUM is not null and :old.BOX_NUM is null) or (:new.BOX_NUM <> :old.BOX_NUM)
union all
select 'COMMENT_TXT', cast(:new.COMMENT_TXT as varchar2(4000)), cast(:old.COMMENT_TXT as varchar2(4000)) from dual
where (:new.COMMENT_TXT is null and :old.COMMENT_TXT is not null) or (:new.COMMENT_TXT is not null and :old.COMMENT_TXT is null) or (:new.COMMENT_TXT <> :old.COMMENT_TXT)
union all
select 'CONCENTRATION_QTY', cast(:new.CONCENTRATION_QTY as varchar2(4000)), cast(:old.CONCENTRATION_QTY as varchar2(4000)) from dual
where (:new.CONCENTRATION_QTY is null and :old.CONCENTRATION_QTY is not null) or (:new.CONCENTRATION_QTY is not null and :old.CONCENTRATION_QTY is null) or (:new.CONCENTRATION_QTY <> :old.CONCENTRATION_QTY)
union all
select 'CONCENTRATION_QTY_UOM', cast(:new.CONCENTRATION_QTY_UOM as varchar2(4000)), cast(:old.CONCENTRATION_QTY_UOM as varchar2(4000)) from dual
where (:new.CONCENTRATION_QTY_UOM is null and :old.CONCENTRATION_QTY_UOM is not null) or (:new.CONCENTRATION_QTY_UOM is not null and :old.CONCENTRATION_QTY_UOM is null) or (:new.CONCENTRATION_QTY_UOM <> :old.CONCENTRATION_QTY_UOM)
union all
select 'EXPIRATION_DTE', cast(:new.EXPIRATION_DTE as varchar2(4000)), cast(:old.EXPIRATION_DTE as varchar2(4000)) from dual
where (:new.EXPIRATION_DTE is null and :old.EXPIRATION_DTE is not null) or (:new.EXPIRATION_DTE is not null and :old.EXPIRATION_DTE is null) or (:new.EXPIRATION_DTE <> :old.EXPIRATION_DTE)
union all
select 'LAB_RECEIVED_DTE', cast(:new.LAB_RECEIVED_DTE as varchar2(4000)), cast(:old.LAB_RECEIVED_DTE as varchar2(4000)) from dual
where (:new.LAB_RECEIVED_DTE is null and :old.LAB_RECEIVED_DTE is not null) or (:new.LAB_RECEIVED_DTE is not null and :old.LAB_RECEIVED_DTE is null) or (:new.LAB_RECEIVED_DTE <> :old.LAB_RECEIVED_DTE)
union all
select 'MASTER_LOT_ID', cast(:new.MASTER_LOT_ID as varchar2(4000)), cast(:old.MASTER_LOT_ID as varchar2(4000)) from dual
where (:new.MASTER_LOT_ID is null and :old.MASTER_LOT_ID is not null) or (:new.MASTER_LOT_ID is not null and :old.MASTER_LOT_ID is null) or (:new.MASTER_LOT_ID <> :old.MASTER_LOT_ID)
union all
select 'ORIGINAL_SAMPLE_IND', cast(:new.ORIGINAL_SAMPLE_IND as varchar2(4000)), cast(:old.ORIGINAL_SAMPLE_IND as varchar2(4000)) from dual
where (:new.ORIGINAL_SAMPLE_IND is null and :old.ORIGINAL_SAMPLE_IND is not null) or (:new.ORIGINAL_SAMPLE_IND is not null and :old.ORIGINAL_SAMPLE_IND is null) or (:new.ORIGINAL_SAMPLE_IND <> :old.ORIGINAL_SAMPLE_IND)
union all
select 'SAMPLES_SENT_QTY', cast(:new.SAMPLES_SENT_QTY as varchar2(4000)), cast(:old.SAMPLES_SENT_QTY as varchar2(4000)) from dual
where (:new.SAMPLES_SENT_QTY is null and :old.SAMPLES_SENT_QTY is not null) or (:new.SAMPLES_SENT_QTY is not null and :old.SAMPLES_SENT_QTY is null) or (:new.SAMPLES_SENT_QTY <> :old.SAMPLES_SENT_QTY)
union all
select 'SAMPLES_STORED_QTY', cast(:new.SAMPLES_STORED_QTY as varchar2(4000)), cast(:old.SAMPLES_STORED_QTY as varchar2(4000)) from dual
where (:new.SAMPLES_STORED_QTY is null and :old.SAMPLES_STORED_QTY is not null) or (:new.SAMPLES_STORED_QTY is not null and :old.SAMPLES_STORED_QTY is null) or (:new.SAMPLES_STORED_QTY <> :old.SAMPLES_STORED_QTY)
union all
select 'SAMPLE_CATEGORY_CDE', cast(:new.SAMPLE_CATEGORY_CDE as varchar2(4000)), cast(:old.SAMPLE_CATEGORY_CDE as varchar2(4000)) from dual
where (:new.SAMPLE_CATEGORY_CDE is null and :old.SAMPLE_CATEGORY_CDE is not null) or (:new.SAMPLE_CATEGORY_CDE is not null and :old.SAMPLE_CATEGORY_CDE is null) or (:new.SAMPLE_CATEGORY_CDE <> :old.SAMPLE_CATEGORY_CDE)
union all
select 'SAMPLE_COLL_MEDIUM_CDE', cast(:new.SAMPLE_COLL_MEDIUM_CDE as varchar2(4000)), cast(:old.SAMPLE_COLL_MEDIUM_CDE as varchar2(4000)) from dual
where (:new.SAMPLE_COLL_MEDIUM_CDE is null and :old.SAMPLE_COLL_MEDIUM_CDE is not null) or (:new.SAMPLE_COLL_MEDIUM_CDE is not null and :old.SAMPLE_COLL_MEDIUM_CDE is null) or (:new.SAMPLE_COLL_MEDIUM_CDE <> :old.SAMPLE_COLL_MEDIUM_CDE)
union all
select 'SAMPLE_CREATION_DTE', cast(:new.SAMPLE_CREATION_DTE as varchar2(4000)), cast(:old.SAMPLE_CREATION_DTE as varchar2(4000)) from dual
where (:new.SAMPLE_CREATION_DTE is null and :old.SAMPLE_CREATION_DTE is not null) or (:new.SAMPLE_CREATION_DTE is not null and :old.SAMPLE_CREATION_DTE is null) or (:new.SAMPLE_CREATION_DTE <> :old.SAMPLE_CREATION_DTE)
union all
select 'SAMPLE_EXTRACTED_DTE', cast(:new.SAMPLE_EXTRACTED_DTE as varchar2(4000)), cast(:old.SAMPLE_EXTRACTED_DTE as varchar2(4000)) from dual
where (:new.SAMPLE_EXTRACTED_DTE is null and :old.SAMPLE_EXTRACTED_DTE is not null) or (:new.SAMPLE_EXTRACTED_DTE is not null and :old.SAMPLE_EXTRACTED_DTE is null) or (:new.SAMPLE_EXTRACTED_DTE <> :old.SAMPLE_EXTRACTED_DTE)
union all
select 'SAMPLE_LABELED_BY', cast(:new.SAMPLE_LABELED_BY as varchar2(4000)), cast(:old.SAMPLE_LABELED_BY as varchar2(4000)) from dual
where (:new.SAMPLE_LABELED_BY is null and :old.SAMPLE_LABELED_BY is not null) or (:new.SAMPLE_LABELED_BY is not null and :old.SAMPLE_LABELED_BY is null) or (:new.SAMPLE_LABELED_BY <> :old.SAMPLE_LABELED_BY)
union all
select 'SAMPLE_POOLED_DTE', cast(:new.SAMPLE_POOLED_DTE as varchar2(4000)), cast(:old.SAMPLE_POOLED_DTE as varchar2(4000)) from dual
where (:new.SAMPLE_POOLED_DTE is null and :old.SAMPLE_POOLED_DTE is not null) or (:new.SAMPLE_POOLED_DTE is not null and :old.SAMPLE_POOLED_DTE is null) or (:new.SAMPLE_POOLED_DTE <> :old.SAMPLE_POOLED_DTE)
union all
select 'SAMPLE_STATUS_CDE', cast(:new.SAMPLE_STATUS_CDE as varchar2(4000)), cast(:old.SAMPLE_STATUS_CDE as varchar2(4000)) from dual
where (:new.SAMPLE_STATUS_CDE is null and :old.SAMPLE_STATUS_CDE is not null) or (:new.SAMPLE_STATUS_CDE is not null and :old.SAMPLE_STATUS_CDE is null) or (:new.SAMPLE_STATUS_CDE <> :old.SAMPLE_STATUS_CDE)
union all
select 'SAMPLE_STORED_QTY_UOM', cast(:new.SAMPLE_STORED_QTY_UOM as varchar2(4000)), cast(:old.SAMPLE_STORED_QTY_UOM as varchar2(4000)) from dual
where (:new.SAMPLE_STORED_QTY_UOM is null and :old.SAMPLE_STORED_QTY_UOM is not null) or (:new.SAMPLE_STORED_QTY_UOM is not null and :old.SAMPLE_STORED_QTY_UOM is null) or (:new.SAMPLE_STORED_QTY_UOM <> :old.SAMPLE_STORED_QTY_UOM)
union all
select 'SAMPLE_TYPE_CDE', cast(:new.SAMPLE_TYPE_CDE as varchar2(4000)), cast(:old.SAMPLE_TYPE_CDE as varchar2(4000)) from dual
where (:new.SAMPLE_TYPE_CDE is null and :old.SAMPLE_TYPE_CDE is not null) or (:new.SAMPLE_TYPE_CDE is not null and :old.SAMPLE_TYPE_CDE is null) or (:new.SAMPLE_TYPE_CDE <> :old.SAMPLE_TYPE_CDE)
union all
select 'SAMPLE_UNIT_UOM', cast(:new.SAMPLE_UNIT_UOM as varchar2(4000)), cast(:old.SAMPLE_UNIT_UOM as varchar2(4000)) from dual
where (:new.SAMPLE_UNIT_UOM is null and :old.SAMPLE_UNIT_UOM is not null) or (:new.SAMPLE_UNIT_UOM is not null and :old.SAMPLE_UNIT_UOM is null) or (:new.SAMPLE_UNIT_UOM <> :old.SAMPLE_UNIT_UOM)
union all
select 'SAMPLE_UNIT_VOL', cast(:new.SAMPLE_UNIT_VOL as varchar2(4000)), cast(:old.SAMPLE_UNIT_VOL as varchar2(4000)) from dual
where (:new.SAMPLE_UNIT_VOL is null and :old.SAMPLE_UNIT_VOL is not null) or (:new.SAMPLE_UNIT_VOL is not null and :old.SAMPLE_UNIT_VOL is null) or (:new.SAMPLE_UNIT_VOL <> :old.SAMPLE_UNIT_VOL)
union all
select 'SAMPLE_USED_QTY_UOM', cast(:new.SAMPLE_USED_QTY_UOM as varchar2(4000)), cast(:old.SAMPLE_USED_QTY_UOM as varchar2(4000)) from dual
where (:new.SAMPLE_USED_QTY_UOM is null and :old.SAMPLE_USED_QTY_UOM is not null) or (:new.SAMPLE_USED_QTY_UOM is not null and :old.SAMPLE_USED_QTY_UOM is null) or (:new.SAMPLE_USED_QTY_UOM <> :old.SAMPLE_USED_QTY_UOM)
union all
select 'SHELF_NUM', cast(:new.SHELF_NUM as varchar2(4000)), cast(:old.SHELF_NUM as varchar2(4000)) from dual
where (:new.SHELF_NUM is null and :old.SHELF_NUM is not null) or (:new.SHELF_NUM is not null and :old.SHELF_NUM is null) or (:new.SHELF_NUM <> :old.SHELF_NUM)
union all
select 'SHIPPING_LABEL_ID', cast(:new.SHIPPING_LABEL_ID as varchar2(4000)), cast(:old.SHIPPING_LABEL_ID as varchar2(4000)) from dual
where (:new.SHIPPING_LABEL_ID is null and :old.SHIPPING_LABEL_ID is not null) or (:new.SHIPPING_LABEL_ID is not null and :old.SHIPPING_LABEL_ID is null) or (:new.SHIPPING_LABEL_ID <> :old.SHIPPING_LABEL_ID)
union all
select 'SLOT_NUM', cast(:new.SLOT_NUM as varchar2(4000)), cast(:old.SLOT_NUM as varchar2(4000)) from dual
where (:new.SLOT_NUM is null and :old.SLOT_NUM is not null) or (:new.SLOT_NUM is not null and :old.SLOT_NUM is null) or (:new.SLOT_NUM <> :old.SLOT_NUM)
union all
select 'STORAGE_ENVIRON_NME', cast(:new.STORAGE_ENVIRON_NME as varchar2(4000)), cast(:old.STORAGE_ENVIRON_NME as varchar2(4000)) from dual
where (:new.STORAGE_ENVIRON_NME is null and :old.STORAGE_ENVIRON_NME is not null) or (:new.STORAGE_ENVIRON_NME is not null and :old.STORAGE_ENVIRON_NME is null) or (:new.STORAGE_ENVIRON_NME <> :old.STORAGE_ENVIRON_NME)
union all
select 'STORAGE_UNIT_NME', cast(:new.STORAGE_UNIT_NME as varchar2(4000)), cast(:old.STORAGE_UNIT_NME as varchar2(4000)) from dual
where (:new.STORAGE_UNIT_NME is null and :old.STORAGE_UNIT_NME is not null) or (:new.STORAGE_UNIT_NME is not null and :old.STORAGE_UNIT_NME is null) or (:new.STORAGE_UNIT_NME <> :old.STORAGE_UNIT_NME)
);
end if;
  
if DELETING then
insert into QCSAMPLE.SAMPLE_AUD(SAMPLE_AUD_IID, CHANGE_BY_ID , CHANGE_TS , CHANGE_TYPE_CDE , SAMPLE_ID, COLUMN_NME , NEW_VALUE_TXT , OLD_VALUE_TXT)
select SEQ_SAMPLE_AUD.NEXTVAL, nvl(:old.UPDATE_BY_ID,USER),   SYSTIMESTAMP, 'D', :old.SAMPLE_ID, COLUMN_NME, null, OLD_VALUE_TXT
from (
select 'BOX_NUM' as COLUMN_NME, cast(:old.BOX_NUM as varchar2(4000)) as OLD_VALUE_TXT from dual
union all
select 'COMMENT_TXT', cast(:old.COMMENT_TXT as varchar2(4000)) from dual
union all
select 'CONCENTRATION_QTY', cast(:old.CONCENTRATION_QTY as varchar2(4000)) from dual
union all
select 'CONCENTRATION_QTY_UOM', cast(:old.CONCENTRATION_QTY_UOM as varchar2(4000)) from dual
union all
select 'EXPIRATION_DTE', cast(:old.EXPIRATION_DTE as varchar2(4000)) from dual
union all
select 'LAB_RECEIVED_DTE', cast(:old.LAB_RECEIVED_DTE as varchar2(4000)) from dual
union all
select 'MASTER_LOT_ID', cast(:old.MASTER_LOT_ID as varchar2(4000)) from dual
union all
select 'ORIGINAL_SAMPLE_IND', cast(:old.ORIGINAL_SAMPLE_IND as varchar2(4000)) from dual
union all
select 'SAMPLES_SENT_QTY', cast(:old.SAMPLES_SENT_QTY as varchar2(4000)) from dual
union all
select 'SAMPLES_STORED_QTY', cast(:old.SAMPLES_STORED_QTY as varchar2(4000)) from dual
union all
select 'SAMPLE_CATEGORY_CDE', cast(:old.SAMPLE_CATEGORY_CDE as varchar2(4000)) from dual
union all
select 'SAMPLE_COLL_MEDIUM_CDE', cast(:old.SAMPLE_COLL_MEDIUM_CDE as varchar2(4000)) from dual
union all
select 'SAMPLE_CREATION_DTE', cast(:old.SAMPLE_CREATION_DTE as varchar2(4000)) from dual
union all
select 'SAMPLE_EXTRACTED_DTE', cast(:old.SAMPLE_EXTRACTED_DTE as varchar2(4000)) from dual
union all
select 'SAMPLE_LABELED_BY', cast(:old.SAMPLE_LABELED_BY as varchar2(4000)) from dual
union all
select 'SAMPLE_POOLED_DTE', cast(:old.SAMPLE_POOLED_DTE as varchar2(4000)) from dual
union all
select 'SAMPLE_STATUS_CDE', cast(:old.SAMPLE_STATUS_CDE as varchar2(4000)) from dual
union all
select 'SAMPLE_STORED_QTY_UOM', cast(:old.SAMPLE_STORED_QTY_UOM as varchar2(4000)) from dual
union all
select 'SAMPLE_TYPE_CDE', cast(:old.SAMPLE_TYPE_CDE as varchar2(4000)) from dual
union all
select 'SAMPLE_UNIT_UOM', cast(:old.SAMPLE_UNIT_UOM as varchar2(4000)) from dual
union all
select 'SAMPLE_UNIT_VOL', cast(:old.SAMPLE_UNIT_VOL as varchar2(4000)) from dual
union all
select 'SAMPLE_USED_QTY_UOM', cast(:old.SAMPLE_USED_QTY_UOM as varchar2(4000)) from dual
union all
select 'SHELF_NUM', cast(:old.SHELF_NUM as varchar2(4000)) from dual
union all
select 'SHIPPING_LABEL_ID', cast(:old.SHIPPING_LABEL_ID as varchar2(4000)) from dual
union all
select 'SLOT_NUM', cast(:old.SLOT_NUM as varchar2(4000)) from dual
union all
select 'STORAGE_ENVIRON_NME', cast(:old.STORAGE_ENVIRON_NME as varchar2(4000)) from dual
union all
select 'STORAGE_UNIT_NME', cast(:old.STORAGE_UNIT_NME as varchar2(4000)) from dual
);
end if;

END;

/

create or replace TRIGGER TR_SAMPLE_SOURCE_COLUMN_AUDIT
BEFORE DELETE OR INSERT OR UPDATE ON SAMPLE_SOURCE 
REFERENCING OLD AS OLD NEW AS NEW 
FOR EACH ROW
BEGIN

if INSERTING then
insert into QCSAMPLE.SAMPLE_SOURCE_AUD(SAMPLE_SOURCE_AUD_IID, CHANGE_BY_ID, CHANGE_TS, CHANGE_TYPE_CDE , SAMPLE_SUBJECT_GUID, COLUMN_NME, NEW_VALUE_TXT, OLD_VALUE_TXT)
select SEQ_SAMPLE_SOURCE_AUD.NEXTVAL, nvl(:new.CREATE_BY_ID,USER), SYSTIMESTAMP, 'I', :new.SAMPLE_SUBJECT_GUID, COLUMN_NME, NEW_VALUE_TXT, NULL
from (

select 'COMMENT_TXT' as COLUMN_NME, cast(:new.COMMENT_TXT as varchar2(4000)) as NEW_VALUE_TXT from dual
union all
select 'ETHNICITY_CDE', cast(:new.ETHNICITY_CDE as varchar2(4000)) from dual
union all
select 'RACE_CDE', cast(:new.RACE_CDE as varchar2(4000)) from dual
union all
select 'REGISTRY_SOURCE_IND', cast(:new.REGISTRY_SOURCE_IND as varchar2(4000)) from dual
union all
select 'SAMPLE_SOURCE_ID', cast(:new.SAMPLE_SOURCE_ID as varchar2(4000)) from dual
union all
select 'SAMPLE_SOURCE_STATUS_CDE', cast(:new.SAMPLE_SOURCE_STATUS_CDE as varchar2(4000)) from dual
union all
select 'SEX_CDE', cast(:new.SEX_CDE as varchar2(4000)) from dual
union all
select 'SUBJECT_CLASS_CDE', cast(:new.SUBJECT_CLASS_CDE as varchar2(4000)) from dual

);
end if;

if UPDATING then
insert into QCSAMPLE.SAMPLE_SOURCE_AUD(SAMPLE_SOURCE_AUD_IID, CHANGE_BY_ID , CHANGE_TS , CHANGE_TYPE_CDE , SAMPLE_SUBJECT_GUID, COLUMN_NME , NEW_VALUE_TXT , OLD_VALUE_TXT)
select SEQ_SAMPLE_SOURCE_AUD.NEXTVAL, nvl(:new.UPDATE_BY_ID, USER), SYSTIMESTAMP, 'U', :new.SAMPLE_SUBJECT_GUID, COLUMN_NME, NEW_VALUE_TXT, OLD_VALUE_TXT
from (
select 'COMMENT_TXT' as COLUMN_NME, cast(:new.COMMENT_TXT as varchar2(4000)) as NEW_VALUE_TXT, cast(:old.COMMENT_TXT as varchar2(4000)) as OLD_VALUE_TXT from dual
where (:new.COMMENT_TXT is null and :old.COMMENT_TXT is not null) or (:new.COMMENT_TXT is not null and :old.COMMENT_TXT is null) or (:new.COMMENT_TXT <> :old.COMMENT_TXT)
union all
select 'ETHNICITY_CDE', cast(:new.ETHNICITY_CDE as varchar2(4000)), cast(:old.ETHNICITY_CDE as varchar2(4000)) from dual
where (:new.ETHNICITY_CDE is null and :old.ETHNICITY_CDE is not null) or (:new.ETHNICITY_CDE is not null and :old.ETHNICITY_CDE is null) or (:new.ETHNICITY_CDE <> :old.ETHNICITY_CDE)
union all
select 'RACE_CDE', cast(:new.RACE_CDE as varchar2(4000)), cast(:old.RACE_CDE as varchar2(4000)) from dual
where (:new.RACE_CDE is null and :old.RACE_CDE is not null) or (:new.RACE_CDE is not null and :old.RACE_CDE is null) or (:new.RACE_CDE <> :old.RACE_CDE)
union all
select 'REGISTRY_SOURCE_IND', cast(:new.REGISTRY_SOURCE_IND as varchar2(4000)), cast(:old.REGISTRY_SOURCE_IND as varchar2(4000)) from dual
where (:new.REGISTRY_SOURCE_IND is null and :old.REGISTRY_SOURCE_IND is not null) or (:new.REGISTRY_SOURCE_IND is not null and :old.REGISTRY_SOURCE_IND is null) or (:new.REGISTRY_SOURCE_IND <> :old.REGISTRY_SOURCE_IND)
union all
select 'SAMPLE_SOURCE_ID', cast(:new.SAMPLE_SOURCE_ID as varchar2(4000)), cast(:old.SAMPLE_SOURCE_ID as varchar2(4000)) from dual
where (:new.SAMPLE_SOURCE_ID is null and :old.SAMPLE_SOURCE_ID is not null) or (:new.SAMPLE_SOURCE_ID is not null and :old.SAMPLE_SOURCE_ID is null) or (:new.SAMPLE_SOURCE_ID <> :old.SAMPLE_SOURCE_ID)
union all
select 'SAMPLE_SOURCE_STATUS_CDE', cast(:new.SAMPLE_SOURCE_STATUS_CDE as varchar2(4000)), cast(:old.SAMPLE_SOURCE_STATUS_CDE as varchar2(4000)) from dual
where (:new.SAMPLE_SOURCE_STATUS_CDE is null and :old.SAMPLE_SOURCE_STATUS_CDE is not null) or (:new.SAMPLE_SOURCE_STATUS_CDE is not null and :old.SAMPLE_SOURCE_STATUS_CDE is null) or (:new.SAMPLE_SOURCE_STATUS_CDE <> :old.SAMPLE_SOURCE_STATUS_CDE)
union all
select 'SEX_CDE', cast(:new.SEX_CDE as varchar2(4000)), cast(:old.SEX_CDE as varchar2(4000)) from dual
where (:new.SEX_CDE is null and :old.SEX_CDE is not null) or (:new.SEX_CDE is not null and :old.SEX_CDE is null) or (:new.SEX_CDE <> :old.SEX_CDE)
union all
select 'SUBJECT_CLASS_CDE', cast(:new.SUBJECT_CLASS_CDE as varchar2(4000)), cast(:old.SUBJECT_CLASS_CDE as varchar2(4000)) from dual
where (:new.SUBJECT_CLASS_CDE is null and :old.SUBJECT_CLASS_CDE is not null) or (:new.SUBJECT_CLASS_CDE is not null and :old.SUBJECT_CLASS_CDE is null) or (:new.SUBJECT_CLASS_CDE <> :old.SUBJECT_CLASS_CDE)

);
end if;
  
if DELETING then
insert into QCSAMPLE.SAMPLE_SOURCE_AUD(SAMPLE_SOURCE_AUD_IID, CHANGE_BY_ID , CHANGE_TS , CHANGE_TYPE_CDE , SAMPLE_SUBJECT_GUID, COLUMN_NME , NEW_VALUE_TXT , OLD_VALUE_TXT)
select SEQ_SAMPLE_SOURCE_AUD.NEXTVAL, nvl(:old.UPDATE_BY_ID,USER),   SYSTIMESTAMP, 'D', :old.SAMPLE_SUBJECT_GUID, COLUMN_NME, null, OLD_VALUE_TXT
from (
select 'COMMENT_TXT' as COLUMN_NME, cast(:old.COMMENT_TXT as varchar2(4000)) as OLD_VALUE_TXT from dual
union all
select 'ETHNICITY_CDE', cast(:old.ETHNICITY_CDE as varchar2(4000)) from dual
union all
select 'RACE_CDE', cast(:old.RACE_CDE as varchar2(4000)) from dual
union all
select 'REGISTRY_SOURCE_IND', cast(:old.REGISTRY_SOURCE_IND as varchar2(4000)) from dual
union all
select 'SAMPLE_SOURCE_ID', cast(:old.SAMPLE_SOURCE_ID as varchar2(4000)) from dual
union all
select 'SAMPLE_SOURCE_STATUS_CDE', cast(:old.SAMPLE_SOURCE_STATUS_CDE as varchar2(4000)) from dual
union all
select 'SEX_CDE', cast(:old.SEX_CDE as varchar2(4000)) from dual
union all
select 'SUBJECT_CLASS_CDE', cast(:old.SUBJECT_CLASS_CDE as varchar2(4000)) from dual
);
end if;

END;

