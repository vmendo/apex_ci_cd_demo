alter table demo.eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_fk
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"50d0f781719fe595f6ac1f242646255da2735038","type":"REF_CONSTRAINT","name":"EBA_CUST_CUST_COMPETITOR_FK","schemaName":"DEMO","sxml":""}