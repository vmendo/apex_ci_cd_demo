-- liquibase formatted sql
-- changeset DEMO:1793805258649 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/triggers/eba_cust_verify_biu_fer.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_verify_biu_fer.sql:null:43bbd6bb57aa83291f89ee02ffe20fd89fa235b4:create

create or replace editionable trigger ${demo}.eba_cust_verify_biu_fer before
    insert or update on ${demo}.eba_cust_verifications
    for each row
begin
    if :new.id is null then
        :new.id := eba_cust_seq.nextval;
    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(apex_application.g_user, user);
    end if;

    if inserting
    or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(apex_application.g_user, user);
    end if;

end;
/

-- changeset DEMO:1793805258651 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/triggers/eba_cust_verify_biu_fer.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_verify_biu_fer.sql:null:1791dd48068ecc343ca5dd5b607c51e05cbae155:create

alter trigger ${demo}.eba_cust_verify_biu_fer enable;

