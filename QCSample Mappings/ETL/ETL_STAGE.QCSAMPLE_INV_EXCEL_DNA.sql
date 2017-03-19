Begin
Execute Immediate ('drop table ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

create table ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA
(
QC_Master_Lot_ID number(9),
Sample_ID varchar2(50),
Receipt_Date timestamp(0),
Expiration_Date varchar2(50),
Aliquot_Date timestamp(0),
Actual_Aliquot_volume_ML number,
Box_No number,
Start_Box_Loc varchar(255),
Total_Vials number,
Vials_Left number,
Sends_Left number,
Active number,
Vol_in_10_ML_Vials number,
No_of_Vials_With_1_ML number,
Total_Poss_Swabs number,
ML_Medium varchar2(255),
ML_Sample_Type varchar2(255),
Collection_Date timestamp(0),
Environment_Name varchar(255),
Storage_Unit varchar2(255),
ML_Unit_Volume number,
ML_Unit_of_Measure varchar2(255),
Send_Medium varchar2(255),
Send_Type varchar2(255),
Swab_Creation_Date timestamp(0),
Swap_Expiration_Date timestamp(0)
)
tablespace ETL_STAGE;
/
grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA to ETL_STAGE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA to QCSAMPLE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA to QCSAMPLE
/
