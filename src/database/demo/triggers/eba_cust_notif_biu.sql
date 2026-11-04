create or replace editionable trigger demo.eba_cust_notif_biu before
    insert or update on demo.eba_cust_notifications
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

alter trigger demo.eba_cust_notif_biu enable;


-- sqlcl_snapshot {"hash":"43a9634d1c7a262a7e1292b24fbfbf3663291050","type":"TRIGGER","name":"EBA_CUST_NOTIF_BIU","schemaName":"DEMO","sxml":""}