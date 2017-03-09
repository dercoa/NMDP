insert into QCSAMPLE.SAMPLE_SHIPMENT
(
  SHIPPING_LABEL_ID,
  CREATE_TS,
  CREATE_BY_ID,
  UPDATE_TS,
  UPDATE_BY_ID
)
select distinct 
  shipping_label_id,
  SYSTIMESTAMP as CREATE_TS,
  'BODS_LOAD' as CREATE_BY_ID,
  SYSTIMESTAMP as UPDATE_TS,
  'BODS_LOAD' as UPDATE_BY_ID
from QCSAMPLE.SAMPLE
where shipping_label_id is not null;

commit;