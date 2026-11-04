create or replace editionable trigger demo.eba_cust_product_statuses_biu before
    insert or update on demo.eba_cust_product_statuses
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

alter trigger demo.eba_cust_product_statuses_biu enable;


-- sqlcl_snapshot {"hash":"57ae76594bf98324d8f8ecc202011db30e288f9a","type":"TRIGGER","name":"EBA_CUST_PRODUCT_STATUSES_BIU","schemaName":"DEMO","sxml":""}