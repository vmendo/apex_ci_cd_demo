-- liquibase formatted sql
-- changeset DEMO:1793805472247 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_tags_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_tags_biu.sql:null:ac603b20c909870a5aedcba981f83220096245c2:create

create or replace editionable trigger ${demo}.eba_cust_tags_biu before
    insert or update on ${demo}.eba_cust_tags
    for each row
begin
    :new.tag := upper(:new.tag);
    if inserting then
        if :new.tag_id is null then
            select
                to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.tag_id
            from
                dual;

        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

-- changeset DEMO:1793805472272 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_tags_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_tags_biu.sql:null:47a780a7f2d730c01ae6f221e2d25e893d47463a:create

alter trigger ${demo}.eba_cust_tags_biu enable;

