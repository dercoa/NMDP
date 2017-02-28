declare qry varchar2(4000);
        type t_char is table of varchar2(4000);
        tbl_result t_char;
        row_cnt integer;
begin
	for i in (
		select 'DYNAMIC_FORM' as name              from dual union all
		select 'DYNAMIC_FORM_FIELD'                from dual union all
		select 'DYNAMIC_FORM_FIELD_OPTION'         from dual union all
		select 'DYNAMIC_FORM_SECTION'              from dual union all
		select 'DYNAMIC_FORM_COMPONENT'            from dual union all
		select 'FORM_RESOURCE_ROLE'                from dual union all
		select 'OPTION_VALUE'                      from dual union all
		select 'ORDER_NOTIFICATION'                from dual union all
		select 'ORDER_NOTIFICATION_STATUS'         from dual union all
		select 'ORDER_SUBJECT_FACTOR_VALUE'        from dual union all
		select 'SERVICE'                           from dual union all
		select 'SALABLE_SERVICE'                   from dual union all
		select 'SERVICE_ITEMIZATION'               from dual union all
		select 'SERVICE_OPTION_VALUE'              from dual union all
		select 'TRACKING_VALUE'                    from dual union all
		select 'TRANSPORT_DETAIL_RULES'            from dual union all
		select 'TRANSPORT_PARTNER'                 from dual	)
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