alter table demo.eba_cust_countries
    add constraint eba_countries_region_fk
        foreign key ( region_id )
            references demo.eba_cust_geographies ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"e2a6a4c4aee4d6ef6bc4c40bec367a2edb5f2b78","type":"REF_CONSTRAINT","name":"EBA_COUNTRIES_REGION_FK","schemaName":"DEMO","sxml":""}