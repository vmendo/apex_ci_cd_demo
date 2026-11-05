create or replace editionable trigger demo.eba_cust_users_biu before
    insert or update on demo.eba_cust_users
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

alter trigger demo.eba_cust_users_biu enable;


-- sqlcl_snapshot {"hash":"e55ca91f2183008043aa3162bd7c00837eb7de8d","type":"TRIGGER","name":"EBA_CUST_USERS_BIU","schemaName":"DEMO","sxml":""}