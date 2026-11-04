-- liquibase formatted sql
-- changeset DEMO:1793805258620 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/triggers/eba_cust_users_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_users_biu.sql:null:7b793349ea1dfb88d0d830b54bc162b29f98ef35:create

create or replace editionable trigger ${demo}.eba_cust_users_biu before
    insert or update on ${demo}.eba_cust_users
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := eba_cust.gen_id();
        end if;

        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created := current_timestamp;
        :new.row_version := 1;
        if :new.account_locked is null then
            :new.account_locked := 'N';
        end if;

    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.row_version := nvl(:old.row_version,
                                1) + 1;
    end if;
    -- Always store username as upper case
    :new.username := upper(:new.username);
end;
/

-- changeset DEMO:1793805258644 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/triggers/eba_cust_users_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_users_biu.sql:null:d558f40b9748a63df5c22336ea7f8234cafd7c71:create

alter trigger ${demo}.eba_cust_users_biu enable;

