create or replace editionable trigger demo.eba_cust_users_bd before
    delete on demo.eba_cust_users
    for each row
begin
    -- Disallow deletes to a user's own record.
    if v('APP_USER') = upper(:old.username) then
        raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
    end if;
end;
/

alter trigger demo.eba_cust_users_bd enable;


-- sqlcl_snapshot {"hash":"a1a94481e4d5c32cda672cb70590183fe0ca1b8c","type":"TRIGGER","name":"EBA_CUST_USERS_BD","schemaName":"DEMO","sxml":""}