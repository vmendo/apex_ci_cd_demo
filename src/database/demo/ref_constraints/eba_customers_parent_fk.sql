alter table demo.eba_cust_customers
    add constraint eba_customers_parent_fk
        foreign key ( parent_customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"33583efef180d938b129ea9adb6fc023f47bf5c8","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_PARENT_FK","schemaName":"DEMO","sxml":""}