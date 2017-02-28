begin
	for i in
	(
		select * from all_tables where owner = 'TS_ORDER_MGMT'
	) loop
		execute immediate 'drop table TS_ORDER_MGMT.'||i.table_name||' cascade constraints;';
	end loop;
	
	for i in
	(
		select * from all_sequences where sequence_owner = 'TS_ORDER_MGMT' and sequence_name not like 'ISEQ%'
	) loop
		execute immediate 'drop sequence TS_ORDER_MGMT.'||i.sequence_name||';';
	end loop;
end;