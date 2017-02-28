begin
	for i in
	(
		select * from all_tables where owner = '${ordersUser}'
	) loop
		execute immediate 'drop table ${ordersUser}.'||i.table_name||' cascade constraints';
	end loop;
	
	for i in
	(
		select * from all_sequences where sequence_owner = '${ordersUser}' and sequence_name not like 'ISEQ%'
	) loop
		execute immediate 'drop sequence ${ordersUser}.'||i.sequence_name;
	end loop;
end;