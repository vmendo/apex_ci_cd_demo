alter table demo.eba_cust_customers
    add constraint eba_customers_type_fk
        foreign key ( type_id )
            references demo.eba_cust_type ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"906be1cbb927e3416b7b72962b2af97c6bf4d398","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_TYPE_FK","schemaName":"DEMO","sxml":""}