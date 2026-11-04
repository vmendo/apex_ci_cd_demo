-- liquibase formatted sql
-- changeset DEMO:1793805472257 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_product_statuses_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_product_statuses_biu.sql:null:05ff12fc287f44772ea56fbccc2069f67b6aa872:create

create or replace editionable trigger ${demo}.eba_cust_product_statuses_biu before
    insert or update on ${demo}.eba_cust_product_statuses
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
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

-- changeset DEMO:1793805472261 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_product_statuses_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_product_statuses_biu.sql:null:baa41768072c8001d6dac97549fea997bfd6e7b7:create

alter trigger ${demo}.eba_cust_product_statuses_biu enable;

