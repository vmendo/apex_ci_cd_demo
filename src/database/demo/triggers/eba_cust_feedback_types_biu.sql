create or replace editionable trigger demo.eba_cust_feedback_types_biu before
    insert or update on demo.eba_cust_feedback_types
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

alter trigger demo.eba_cust_feedback_types_biu enable;


-- sqlcl_snapshot {"hash":"4d288f9cf35c69d1bfd92b540fa422ac607f8e49","type":"TRIGGER","name":"EBA_CUST_FEEDBACK_TYPES_BIU","schemaName":"DEMO","sxml":""}