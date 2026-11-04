alter table demo.eba_cust_contacts
    add constraint eba_cust_contact_customers_fk
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"c472de679c34a7d865ba02dd62e89ae54ee44ad1","type":"REF_CONSTRAINT","name":"EBA_CUST_CONTACT_CUSTOMERS_FK","schemaName":"DEMO","sxml":""}