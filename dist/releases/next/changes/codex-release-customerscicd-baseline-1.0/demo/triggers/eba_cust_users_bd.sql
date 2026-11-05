-- liquibase formatted sql
-- changeset DEMO:1793874438199 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_users_bd.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_users_bd.sql:null:a1fb8c7899c0ea54243a2e0e542869c212eaad4a:create

create or replace editionable trigger ${demo}.eba_cust_users_bd before
    delete on ${demo}.eba_cust_users
    for each row
begin
    -- Disallow deletes to a user's own record.
    if v('APP_USER') = upper(:old.username) then
        raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
    end if;
end;
/

-- changeset DEMO:1793874438209 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_users_bd.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_users_bd.sql:null:c8b9fcd02dad9c8937e088c7effcf4fa5484e3f0:create

alter trigger ${demo}.eba_cust_users_bd enable;

