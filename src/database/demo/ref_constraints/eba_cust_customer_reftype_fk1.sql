alter table demo.eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_fk1
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"92ea13e7323a9c93186cb729470fddf224f756c8","type":"REF_CONSTRAINT","name":"EBA_CUST_CUSTOMER_REFTYPE_FK1","schemaName":"DEMO","sxml":""}