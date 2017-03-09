insert into SAMPLE_SOURCE(
SAMPLE_SOURCE_IID,
SAMPLE_SUBJECT_GUID,
SAMPLE_SOURCE_ID,
SUBJECT_CLASS_CDE,
RACE_CDE,
ETHNICITY_CDE,
SEX_CDE,
SAMPLE_SOURCE_STATUS_CDE,
REGISTRY_SOURCE_IND,
COMMENT_TXT,
CREATE_TS,
CREATE_BY_ID,
UPDATE_TS,
UPDATE_BY_ID
)
select SEQ_SAMPLE_SOURCE.NEXTVAL as SAMPLE_SOURCE_IID,
s.SUBJECT_GUID as SAMPLE_SUBJECT_GUID,
e.SAMPLE_ID as SAMPLE_SOURCE_ID,
case subject_classification_desc
when 'Donor' then 'DONOR'
when 'Cord' then 'CBU'
when 'Recipient' then 'RECIPIENT'
when 'CordMom' then 'MOTHER'
else subject_classification_desc
end as SUBJECT_CLASS_CDE,
s.RACE_CDE,
s.ETH_CDE as ETHNICITY_CDE,
s.SEX_CDE,
case when e.Active = 1 then 'ACTIVE' else 'INACTIVE' end as SAMPLE_SOURCE_STATUS_CDE,
case when e.SAMPLE_ID is not null then 'Y' else 'N' end as REGISTRY_SOURCE_IND,
e.Comments as COMMENT_TXT,
SYSTIMESTAMP as CREATE_TS,
'bods_user' as CREATE_BY_ID,
SYSTIMESTAMP as UPDATE_TS,
'bods_user' as UPDATE_BY_ID
from ETL_STAGE.QCSAMPLE_INV_EXCEL_DATA e
left join ETL_STAGE.QCSAMPLE_INV_SYBASE_DATA s on s.nmdp_id = replace(e.SAMPLE_ID, '-','')
where e.QC_MASTER_LOT_ID is not null;
commit;