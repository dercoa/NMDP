insert into QCSAMPLE.SAMPLE_SOURCE(
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
nvl(s.SUBJECT_GUID, SYS_GUID()) as SAMPLE_SUBJECT_GUID,
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
'BODS_LOAD' as CREATE_BY_ID,
SYSTIMESTAMP as UPDATE_TS,
'BODS_LOAD' as UPDATE_BY_ID
from ETL_STAGE.QCSAMPLE_INV_EXCEL_BLCL e
left join ETL_STAGE.QCSAMPLE_INV_SYBASE_DATA s on s.nmdp_id = replace(e.SAMPLE_ID, '-','') 
	and (instr(e.SAMPLE_ID, '-') = 5 and s.subject_classification_desc = 'Donor' or instr(e.SAMPLE_ID, '-') = 4 
	and s.subject_classification_desc = 'Recipient')
where e.Active = 1;
commit;