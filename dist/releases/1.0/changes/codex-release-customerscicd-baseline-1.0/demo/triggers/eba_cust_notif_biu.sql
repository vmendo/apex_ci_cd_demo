-- liquibase formatted sql
-- changeset DEMO:1793805472222 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_notif_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_notif_biu.sql:null:e76cd599091a497931ff2fe87225a8ce9cf17350:create

create or replace editionable trigger ${demo}.eba_cust_notif_biu before
    insert or update on ${demo}.eba_cust_notifications
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;

    if updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
    end if;

    if :new.notification_type is null then
        :new.notification_type := 'MANUAL';
    end if;

end;
/

-- changeset DEMO:1793805472249 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_notif_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_notif_biu.sql:null:d41d374260d461d1491b3996a9bc6fc3f200d360:create

alter trigger ${demo}.eba_cust_notif_biu enable;

