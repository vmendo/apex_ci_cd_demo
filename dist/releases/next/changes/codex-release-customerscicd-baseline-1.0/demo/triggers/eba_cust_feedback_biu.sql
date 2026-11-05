-- liquibase formatted sql
-- changeset DEMO:1793874438107 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_feedback_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_feedback_biu.sql:null:54cb62de170157fa6de258ac242fe79d2193447b:create

create or replace editionable trigger ${demo}.eba_cust_feedback_biu before
    insert or update on ${demo}.eba_cust_feedback
    for each row
begin
    if :new.id is null then
        :new.id := to_number ( sys_guid(),
        'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end;
/

-- changeset DEMO:1793874438133 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_feedback_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_feedback_biu.sql:null:4f18652d90669fcc1594cf19e052732432dddae8:create

alter trigger ${demo}.eba_cust_feedback_biu enable;

