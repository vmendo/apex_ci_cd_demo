alter table demo.eba_cust_links
    add constraint eba_cust_links_cust_fk
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"30a035fd7358d0ae5751dd9cfa942bdb99806821","type":"REF_CONSTRAINT","name":"EBA_CUST_LINKS_CUST_FK","schemaName":"DEMO","sxml":""}