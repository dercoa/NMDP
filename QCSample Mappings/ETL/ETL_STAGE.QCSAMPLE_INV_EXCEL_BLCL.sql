Begin
Execute Immediate ('drop table ETL_STAGE.QCSAMPLE_INV_EXCEL_BLCL cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

create table ETL_STAGE.QCSAMPLE_INV_EXCEL_BLCL
(
QC_Master_Lot_ID number(9),
Sample_ID varchar2(50),
No_of_Cells_Vial varchar2(255),
Collection_Date timestamp(0),
Receipt_Date timestamp(0),
Box_No number,
Start_Box_Loc varchar(255),
Vials_Used number,
Vials_Left number,
Poss_Swabs number,
Sends_Left number,
Active number,
Comments varchar2(255),
ML_Medium varchar2(255),
ML_Sample_Type varchar2(255),
Environment_Name varchar(255),
Storage_Unit varchar2(255),
ML_Unit_Volumne number,
ML_Unit_of_Measure varchar2(255),
Send_Medium varchar2(255),
Send_Type varchar2(255),
Creation_Date timestamp(0),
Expiration_Date timestamp(0)
)
tablespace ETL_STAGE;
/
grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_INV_EXCEL_BLCL to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_BLCL to ETL_STAGE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_BLCL to QCSAMPLE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_BLCL to QCSAMPLE
/
