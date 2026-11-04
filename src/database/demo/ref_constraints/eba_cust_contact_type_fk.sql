alter table demo.eba_cust_contacts
    add constraint eba_cust_contact_type_fk
        foreign key ( contact_type_id )
            references demo.eba_cust_contact_types ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"2c2d1f938cd68d86eeb22fc78b769d8fa0ccd878","type":"REF_CONSTRAINT","name":"EBA_CUST_CONTACT_TYPE_FK","schemaName":"DEMO","sxml":""}