-- liquibase formatted sql
-- changeset DEMO:1793805258526 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/triggers/eba_cust_acl_features_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_acl_features_biu.sql:null:c012589df8aad2ae9bbb31f7fa67ea361b4a0ea2:create

create or replace editionable trigger ${demo}.eba_cust_acl_features_biu before
    insert or update on ${demo}.eba_cust_acl_features
    for each row
begin
  -- Always store authorization_name as upper case
    :new.authorization_name := upper(:new.authorization_name);
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
    elsif updating then
        :new.row_version := nvl(:old.row_version,
                                1) + 1;
    end if;

    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
    :new.updated := current_timestamp;
end;
/

-- changeset DEMO:1793805258531 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/triggers/eba_cust_acl_features_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_acl_features_biu.sql:null:7fe49a7f30ef38a232e5217066076d6b2babd56c:create

alter trigger ${demo}.eba_cust_acl_features_biu enable;

