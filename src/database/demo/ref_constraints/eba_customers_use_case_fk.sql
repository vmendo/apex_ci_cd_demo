alter table demo.eba_cust_customers
    add constraint eba_customers_use_case_fk
        foreign key ( use_case_id )
            references demo.eba_cust_use_case ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"0c55c18931260cef4c83eb18c7dd78f3e62cd5d2","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_USE_CASE_FK","schemaName":"DEMO","sxml":""}