alter table demo.eba_cust_customers
    add constraint eba_customers_geography_fk
        foreign key ( geography_id )
            references demo.eba_cust_geographies ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"a831eb5419a3bc51ff2f6482929a6027f32fd058","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_GEOGRAPHY_FK","schemaName":"DEMO","sxml":""}