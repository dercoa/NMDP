alter table QCSAMPLE.SAMPLE
   add constraint FK_SAMPLE_01 foreign key (MASTER_LOT_IID)
      references QCSAMPLE.MASTER_LOT (MASTER_LOT_IID)
/

alter table QCSAMPLE.SAMPLE
   add constraint FK_SAMPLE_02 foreign key (SAMPLE_STATUS_CDE)
      references QCSAMPLE.SAMPLE_STATUS (SAMPLE_STATUS_CDE)
/

alter table QCSAMPLE.SAMPLE
   add constraint FK_SAMPLE_03 foreign key (SAMPLE_TYPE_CDE)
      references QCSAMPLE.SAMPLE_TYPE (SAMPLE_TYPE_CDE)
/

alter table QCSAMPLE.SAMPLE
   add constraint FK_SAMPLE_04 foreign key (SAMPLE_COLL_MEDIUM_CDE)
      references QCSAMPLE.SAMPLE_COLLECTION_MEDIUM (SAMPLE_COLL_MEDIUM_CDE)
/

alter table QCSAMPLE.SAMPLE
   add constraint FK_SAMPLE_05 foreign key (SHIPPING_LABEL_ID)
      references QCSAMPLE.SAMPLE_SHIPMENT (SHIPPING_LABEL_ID)
/
