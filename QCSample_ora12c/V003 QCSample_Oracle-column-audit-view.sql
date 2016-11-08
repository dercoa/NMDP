create or replace view QCSAMPLE.column_audit_data
as
select
	  sample_aud_iid * 10 + 1 as column_aud_id,
	  change_ts,
    change_by_id,
    column_nme,
    old_value_txt,
    new_value_txt,
    sample_subject_guid,
    master_lot_guid,
    sample_guid
from QCSAMPLE.sample_aud

union all

select
	  master_lot_aud_iid * 10 + 2 as column_aud_id,
	  change_ts,
    change_by_id,
    column_nme,
    old_value_txt,
    new_value_txt,
    sample_subject_guid,
    master_lot_guid,
    null as sample_guid
from QCSAMPLE.master_lot_aud

union all

select
	  sample_source_aud_iid * 10 + 3 as column_aud_id,
	  change_ts,
    change_by_id,
    column_nme,
    old_value_txt,
    new_value_txt,
    sample_subject_guid,
    null as master_lot_guid,
    null as sample_guid
from QCSAMPLE.sample_source_aud;
