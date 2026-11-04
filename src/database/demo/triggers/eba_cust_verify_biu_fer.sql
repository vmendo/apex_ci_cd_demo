create or replace editionable trigger demo.eba_cust_verify_biu_fer before
    insert or update on demo.eba_cust_verifications
    for each row
begin
    if :new.id is null then
        :new.id := eba_cust_seq.nextval;
    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(apex_application.g_user, user);
    end if;

    if inserting
    or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(apex_application.g_user, user);
    end if;

end;
/

alter trigger demo.eba_cust_verify_biu_fer enable;


-- sqlcl_snapshot {"hash":"b53c4111aceedb7ab19672045f19ca2f438752de","type":"TRIGGER","name":"EBA_CUST_VERIFY_BIU_FER","schemaName":"DEMO","sxml":""}