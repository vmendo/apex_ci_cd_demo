-- liquibase formatted sql
-- changeset DEMO:1793805472211 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_preferences_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_preferences_biu.sql:null:00611b97eaf1d6f836f34a7de48b62e377a7438d:create

create or replace editionable trigger ${demo}.eba_cust_preferences_biu before
    insert or update on ${demo}.eba_cust_preferences
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        :new.id := eba_cust.gen_id();
    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created_on := current_timestamp;
    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated_on := current_timestamp;
    end if;

    :new.preference_name := upper(:new.preference_name);
end;
/

-- changeset DEMO:1793805472259 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_preferences_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_preferences_biu.sql:null:2fc24c5d68374d094aa97c4aaa8e474647af7269:create

alter trigger ${demo}.eba_cust_preferences_biu enable;

