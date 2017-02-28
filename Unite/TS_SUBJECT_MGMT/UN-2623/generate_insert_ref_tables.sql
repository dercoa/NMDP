declare qry varchar2(4000);
        type t_char is table of varchar2(4000);
        tbl_result t_char;
        row_cnt integer;
begin
	for i in (
		select 'ACTIVITY' as name     from dual union all
		select 'ALERT'                from dual union all
		select 'BP_ADDRESS'           from dual union all
		select 'BP_IDENTIFIER'        from dual union all
		select 'BUSINESS_PARTY'       from dual union all
		select 'CASE_RESOURCE'        from dual union all
		select 'DISEASE_STAGE_MAP'    from dual union all
		select 'RACE'                 from dual union all
		select 'REFERRING_PHYSICIAN'  from dual union all
		select 'RESOURCE_ROLE_RIGHTS' from dual union all
		select 'ROLE_PERMISSION_FE'   from dual union all
		select 'STATE'                from dual
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