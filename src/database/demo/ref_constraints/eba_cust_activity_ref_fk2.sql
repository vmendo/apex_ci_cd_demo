alter table demo.eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk2
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"29597fb57fefe4fca45be6ddd2c8d44ddfe1c7ea","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITY_REF_FK2","schemaName":"DEMO","sxml":""}