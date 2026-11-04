-- liquibase formatted sql
-- changeset DEMO:1793805258540 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/triggers/eba_cust_feedback_types_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_feedback_types_biu.sql:null:3b1ef95b11daa9b37e032167f89db1821c1475cd:create

create or replace editionable trigger ${demo}.eba_cust_feedback_types_biu before
    insert or update on ${demo}.eba_cust_feedback_types
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

-- changeset DEMO:1793805258570 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/triggers/eba_cust_feedback_types_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_feedback_types_biu.sql:null:b177e0cd9564caf62573d969812cccc34df14c55:create

alter trigger ${demo}.eba_cust_feedback_types_biu enable;

