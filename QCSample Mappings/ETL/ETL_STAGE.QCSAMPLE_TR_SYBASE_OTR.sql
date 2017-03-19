Begin
Execute Immediate ('drop table ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/


create table ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR
(
hla_hist_id number,
sequence_num number,
typing_dte timestamp(0),
received_dte timestamp(0),
nmdp_did number,
phenotype_seq_num number,
reporting_method_cde varchar2(4),
org_guid varchar2(16)

)
tablespace ETL_STAGE
/

grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR to ETL_STAGE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR to QCSAMPLE_APP_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR to QCSAMPLE
/
