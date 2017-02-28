begin
	for i in
	(
		select * from all_tables where owner = 'TS_SUBJECT_MGMT'
	) loop
		execute immediate 'drop table TS_SUBJECT_MGMT.'||i.table_name||' cascade constraints;';
	end loop;
	
	for i in
	(
		select * from all_sequences where sequence_owner = 'TS_SUBJECT_MGMT' and sequence_name not like 'ISEQ%'
	) loop
		execute immediate 'drop sequence TS_SUBJECT_MGMT.'||i.sequence_name||';';
	end loop;
end;