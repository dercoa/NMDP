alter table QCSAMPLE.SAMPLE_SOURCE
   drop constraint FK_QC_SOURCE_01;
alter table QCSAMPLE.SAMPLE_SOURCE
   drop constraint FK_QC_SOURCE_02;
alter table QCSAMPLE.SAMPLE_SOURCE
   drop constraint FK_QC_SOURCE_03;
alter table QCSAMPLE.SAMPLE_SOURCE
   drop constraint FK_QC_SOURCE_04;
alter table QCSAMPLE.SAMPLE_SOURCE
   drop constraint FK_SAMPLE_SOURCE_05;

alter table QCSAMPLE.SAMPLE_SOURCE
   drop constraint AK_SAMPLE_SOURCE;