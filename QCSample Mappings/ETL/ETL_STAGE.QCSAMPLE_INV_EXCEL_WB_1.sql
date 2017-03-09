create table ETL_STAGE.QCSAMPLE_INV_EXCEL_WB_1
(
QC_Master number(9),
Date_Collected timestamp(0),
Aliquot_Date timestamp(0),
Total_Vol varchar2(255),
Total_Vials number(9),
No_of_Vials1 number(9),
No_of_Vials2 number(9),
Volume_In_Vials1 number(9),
Volume_In_Vials2 number(9),
Volume_In_Vials varchar2(50),
No_of_Small_Vials number(9),
Volume_In_Small_Vials number(9),
Box_No number(9),
Start_Box_Location varchar2(255),
ML_Medium varchar2(255),
ML_Sample_Type varchar2(255),
Environment_Name varchar(255),
Storage_Unit varchar2(255),
Send_Medium varchar2(255),
Send_Type varchar2(255),
Total_No_Of_Filter_Paper number(9),
Volume_Per_FP number(9),
Creation_Date timestamp(0)
)
tablespace ETL_STAGE;
/
grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_INV_EXCEL_WB_1 to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_WB_1 to ETL_STAGE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_WB_1 to QCSAMPLE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_WB_1 to QCSAMPLE
/
