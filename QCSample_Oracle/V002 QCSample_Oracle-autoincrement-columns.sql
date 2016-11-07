Begin
Execute Immediate ('drop sequence ADERCO.Seq_master_lot');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence ADERCO.Seq_master_lot_aud');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence ADERCO.Seq_persistent_audit_event');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence ADERCO.Seq_sample');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence ADERCO.Seq_sample_aud');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence ADERCO.Seq_sample_source');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence ADERCO.Seq_sample_source_aud');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence ADERCO.Seq_user');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/


create sequence ADERCO.Seq_master_lot
/

create sequence ADERCO.Seq_master_lot_aud
/

create sequence ADERCO.Seq_persistent_audit_event
/

create sequence ADERCO.Seq_sample
/

create sequence ADERCO.Seq_sample_aud
/

create sequence ADERCO.Seq_sample_source
/

create sequence ADERCO.Seq_sample_source_aud
/

create sequence ADERCO.Seq_user
/

create or replace trigger ADERCO.tr_master_lot_seq before insert
on ADERCO.master_lot for each row
begin
    select ADERCO.Seq_master_lot.NEXTVAL INTO :new.master_lot_id from dual;
end;
/

create or replace trigger ADERCO.tr_master_lot_aud_seq before insert
on ADERCO.master_lot_aud for each row
begin
    select ADERCO.Seq_master_lot_aud.NEXTVAL INTO :new.master_lot_aud_iid from dual;
end;
/

create or replace trigger ADERCO.tr_persistent_audit_event_seq before insert
on ADERCO.persistent_audit_event for each row
begin
    select ADERCO.Seq_persistent_audit_event.NEXTVAL INTO :new.event_id from dual;
end;
/

create or replace trigger ADERCO.tr_sample_seq before insert
on ADERCO.sample for each row
begin
    select ADERCO.Seq_sample.NEXTVAL INTO :new.sample_id from dual;
end;
/

create or replace trigger ADERCO.tr_sample_aud_seq before insert
on ADERCO.sample_aud for each row
begin
    select ADERCO.Seq_sample_aud.NEXTVAL INTO :new.sample_aud_iid from dual;
end;
/

create or replace trigger ADERCO.tr_sample_source_seq before insert
on ADERCO.sample_source for each row
begin
    select ADERCO.Seq_sample_source.NEXTVAL INTO :new.sample_source_id from dual;
end;
/

create or replace trigger ADERCO.tr_sample_source_aud_seq before insert
on ADERCO.sample_source_aud for each row
begin
    select ADERCO.Seq_sample_source_aud.NEXTVAL INTO :new.sample_source_aud_iid from dual;
end;
/

create or replace trigger ADERCO.tr_user_seq before insert
on ADERCO."USER" for each row
begin
    select ADERCO.Seq_user.NEXTVAL INTO :new.id from dual;
end;
/


