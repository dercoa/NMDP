alter table QCSAMPLE.SAMPLE_SOURCE
   add constraint AK_SAMPLE_SOURCE unique (SAMPLE_SOURCE_ID)
/
alter table QCSAMPLE.SAMPLE_SOURCE
   add constraint FK_QC_SOURCE_01 foreign key (RACE_CDE)
      references QCSAMPLE.RACE (RACE_CDE)
/

alter table QCSAMPLE.SAMPLE_SOURCE
   add constraint FK_QC_SOURCE_02 foreign key (ETHNICITY_CDE)
      references QCSAMPLE.ETHNICITY (ETHNICITY_CDE)
/

alter table QCSAMPLE.SAMPLE_SOURCE
   add constraint FK_QC_SOURCE_03 foreign key (SEX_CDE)
      references QCSAMPLE.SEX (SEX_CDE)
/

alter table QCSAMPLE.SAMPLE_SOURCE
   add constraint FK_QC_SOURCE_04 foreign key (SUBJECT_CLASS_CDE)
      references QCSAMPLE.SUBJECT_CLASS (SUBJECT_CLASS_CDE)
/

alter table QCSAMPLE.SAMPLE_SOURCE
   add constraint FK_SAMPLE_SOURCE_05 foreign key (SAMPLE_SOURCE_STATUS_CDE)
      references QCSAMPLE.SAMPLE_SOURCE_STATUS (SOURCE_STATUS_CDE)
/