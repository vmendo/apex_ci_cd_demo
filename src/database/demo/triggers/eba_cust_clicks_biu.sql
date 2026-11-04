create or replace editionable trigger demo.eba_cust_clicks_biu before
    insert on demo.eba_cust_clicks
    for each row
begin
    if :new.id is null then
        :new.id := eba_cust_seq.nextval;
    end if;

    :new.view_timestamp := current_timestamp;
    :new.app_username := nvl(
        v('APP_USER'),
        user
    );
    :new.app_session := v('APP_SESSION');
end;
/

alter trigger demo.eba_cust_clicks_biu enable;


-- sqlcl_snapshot {"hash":"30c7a8787e950c251b2244e0105431d812fb7ae4","type":"TRIGGER","name":"EBA_CUST_CLICKS_BIU","schemaName":"DEMO","sxml":""}