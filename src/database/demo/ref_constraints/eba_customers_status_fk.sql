alter table demo.eba_cust_customers
    add constraint eba_customers_status_fk
        foreign key ( status_id )
            references demo.eba_cust_status ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"b7535b094228bf529855a63731d27000329f8c90","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_STATUS_FK","schemaName":"DEMO","sxml":""}