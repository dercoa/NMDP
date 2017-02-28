declare qry varchar2(4000);
        type t_char is table of varchar2(4000);
        tbl_result t_char;
        row_cnt integer;
begin
	for i in (
		select 'ACTIVITY_STATUS' as name  from dual union all
		select 'ACTIVITY_TYPE'            from dual union all
		select 'ALERT_STATUS'             from dual union all
		select 'ALERT_TYPE'               from dual union all
		select 'BLOOD_TYPE'               from dual union all
		select 'BROAD_RACE'               from dual union all
		select 'CASE_STATUS'              from dual union all
		select 'CMV_STATUS'               from dual union all
		select 'COUNTRY'                  from dual union all
		select 'DISEASE'                  from dual union all
		select 'DISEASE_STAGE'            from dual union all
		select 'ETHNICITY'                from dual union all
		select 'IN_PROGRESS_STATUS'       from dual union all
		select 'LANGUAGE'                 from dual union all
		select 'RECIPIENT_STATUS'         from dual union all
		select 'RECIPIENT_STATUS_REASON'  from dual union all
		select 'RESOURCE_RIGHT'           from dual union all
		select 'RESOURCE_ROLE'            from dual union all
		select 'SUBJECT_CLASS'            from dual
	)
	loop
		select GEN_INSERT_STATEMENT2(i.name) into qry from dual;
		DBMS_OUTPUT.PUT_LINE('-- ' || i.name);
		--  DBMS_OUTPUT.PUT_LINE('-- ' || qry);
		execute immediate qry bulk collect into tbl_result;
		row_cnt:= tbl_result.count;
		for j in 1..row_cnt 
		loop
			DBMS_OUTPUT.PUT_LINE(tbl_result(j));
		end loop;
		DBMS_OUTPUT.PUT_LINE('');  
	end loop;
end;