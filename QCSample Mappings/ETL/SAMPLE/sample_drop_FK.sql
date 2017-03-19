alter table QCSAMPLE.SAMPLE
   drop constraint FK_SAMPLE_01;
alter table QCSAMPLE.SAMPLE
   drop constraint FK_SAMPLE_02;
alter table QCSAMPLE.SAMPLE
   drop constraint FK_SAMPLE_03;
alter table QCSAMPLE.SAMPLE
   drop constraint FK_SAMPLE_04;
alter table QCSAMPLE.SAMPLE
   drop constraint FK_SAMPLE_05;

alter table QCSAMPLE.SAMPLE_RELATIONSHIP
   drop constraint FK_SAMPLE_R_FK_SAMPLE_SAMPLE
/

alter table QCSAMPLE.SAMPLE_RELATIONSHIP
   drop constraint FK_SAMPLE_RELATIONSHIP_02
/
