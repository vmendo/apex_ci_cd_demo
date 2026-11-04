alter table demo.eba_cust_files
    add constraint eba_cust_files_fk
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"d727681125cd09df748d28507375d4a0534c2a22","type":"REF_CONSTRAINT","name":"EBA_CUST_FILES_FK","schemaName":"DEMO","sxml":""}