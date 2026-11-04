alter table demo.eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_fk
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"e976baafe042f7ea3df6767ccd017e9d4a3d8366","type":"REF_CONSTRAINT","name":"EBA_CUST_CUST_PART_FK","schemaName":"DEMO","sxml":""}