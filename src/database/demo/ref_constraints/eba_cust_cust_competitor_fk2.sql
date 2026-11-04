alter table demo.eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_fk2
        foreign key ( competitor_id )
            references demo.eba_cust_competitors ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"a81ba9a9372fb622cc56dcc9119267bbc275b547","type":"REF_CONSTRAINT","name":"EBA_CUST_CUST_COMPETITOR_FK2","schemaName":"DEMO","sxml":""}