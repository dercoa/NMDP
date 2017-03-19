Begin
Execute Immediate ('drop table ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR_HAP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/


create table ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR_HAP
(
hla_hist_id number,
name varchar2(16),
sys_cde varchar2(6),
a1_type varchar2(32),
a2_type varchar2(32)
)
tablespace ETL_STAGE
/

grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR_HAP to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR_HAP to ETL_STAGE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR_HAP to QCSAMPLE_APP_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_TR_SYBASE_OTR_HAP to QCSAMPLE
/
