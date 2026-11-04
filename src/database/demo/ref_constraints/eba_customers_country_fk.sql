alter table demo.eba_cust_customers
    add constraint eba_customers_country_fk
        foreign key ( country_id )
            references demo.eba_cust_countries ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"58433f7cea36b9f4c40cc8d2daf29f0987798cc1","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_COUNTRY_FK","schemaName":"DEMO","sxml":""}