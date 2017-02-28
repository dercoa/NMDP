begin
	for i in
	(
		select * from all_tables where owner = '${subjectsUser}'
	) loop
		execute immediate 'drop table ${subjectsUser}.'||i.table_name||' cascade constraints';
	end loop;
	
	for i in
	(
		select * from all_sequences where sequence_owner = '${subjectsUser}' and sequence_name not like 'ISEQ%'
	) loop
		execute immediate 'drop sequence ${subjectsUser}.'||i.sequence_name;
	end loop;
end;