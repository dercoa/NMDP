insert into QCSAMPLE.TYPING_RESULT
(
	TEST_RESULT_IID,
	SAMPLE_REF_ID,
	GENE_FAMILY_CDE,
	PHENOTYPE_SEQ_NUM,
	COMMENT_TXT,
	CREATE_TS,
	CREATE_BY_ID,
	UPDATE_TS,
	UPDATE_BY_ID
)
select
        tr.TEST_RESULT_IID,
        ss.shipping_label_id as SAMPLE_REF_ID,
        'HLA' as GENE_FSAMILY_CODE,
        otr.PHENOTYPE_SEQ_NUM,
        null as COMMENT_TXT,
	SYSTIMESTAMP as CREATE_TS,
	'BODS_LOAD' as CREATE_BY_ID,
	SYSTIMESTAMP as UPDATE_TS,
	'BODS_LOAD' as UPDATE_BY_ID
from QCSAMPLE.QCSAMPLE_TR_SYBASE_OTR otr
inner join QCSAMPLE.SAMPLE_SHIPMENT ss on cast(replace(ss.shipping_label_id,'-','') as number) = otr.nmdp_did
inner join QCSAMPLE.TEST_RESULT tr on cast(tr.SUBJECT_REF_ID as varchar2(50)) = otr.nmdp_did 
where ss.SHIPPING_LABEL_ID not like '%.%'; -- ignore fake records

commit;

