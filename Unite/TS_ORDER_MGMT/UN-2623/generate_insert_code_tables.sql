declare qry varchar2(4000);
        type t_char is table of varchar2(4000);
        tbl_result t_char;
        row_cnt integer;
begin
	for i in (
		select 'CANCEL_REASON' as name          from dual union all
		select 'CENTRAL_LINE_PLACEMENT'         from dual union all
		select 'CENTRAL_LINE_STATUS'            from dual union all
		select 'CLOSE_REASON'                   from dual union all
		select 'DYNAMIC_FORM_FIELD_TYPE'        from dual union all
		select 'DYNAMIC_FORM_TYPE'              from dual union all
		select 'FORM_MASTER_LIST'               from dual union all
		select 'ORDER_NOTIFICATION_TYPE'        from dual union all
		select 'ORDER_RELEASE_REASON'           from dual union all
		select 'ORDER_STATUS'                   from dual union all
		select 'ORDER_SUBJECT_FACTOR'           from dual union all
		select 'ORDER_TYPE'                     from dual union all
		select 'PROJECT'                        from dual union all
		select 'PROPOSED_ORDER_TRACKING_STATUS' from dual union all
		select 'SERVICE_ITEMIZATION_TYPE'       from dual union all
		select 'SERVICE_OPTION'                 from dual union all
		select 'SERVICE_TYPE'                   from dual union all
		select 'SOURCE_TYPE'                    from dual union all
		select 'TRACKING'                       from dual union all
		select 'TRANSPORT_ADDRESS_TYPE'         from dual union all
		select 'TRANSPORT_DETAIL_METHOD'        from dual union all
		select 'TRANSPORT_REQUEST_STATUS'       from dual union all
		select 'TRANSPORT_TEMPERATURE'          from dual
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