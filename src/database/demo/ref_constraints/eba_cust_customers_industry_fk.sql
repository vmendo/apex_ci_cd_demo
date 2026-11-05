alter table demo.eba_cust_customers
    add constraint eba_cust_customers_industry_fk
        foreign key ( industry_id )
            references demo.eba_cust_industries ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"39e423ec9d41d7e9f2908be908efa16976fb4008","type":"REF_CONSTRAINT","name":"EBA_CUST_CUSTOMERS_INDUSTRY_FK","schemaName":"DEMO","sxml":""}