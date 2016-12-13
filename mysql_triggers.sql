delimiter $$

drop trigger if exists tr_allele_code_type_audc_i
$$
create trigger tr_allele_code_type_audc_i
before insert on allele_code_type
for each row
begin
set new.create_ts  = now();
set new.update_ts = now();
set new.create_by_id = ifnull(new.create_by_id, user());
set new.update_by_id = ifnull(new.update_by_id, user());
end;
$$
drop trigger if exists tr_allele_code_type_audc_u
$$
create trigger tr_allele_code_type_audc_u
before update on allele_code_type
for each row
begin
set new.update_ts = now();
set new.update_by_id = ifnull(new.update_by_id, user());
end;
$$


delimiter ;