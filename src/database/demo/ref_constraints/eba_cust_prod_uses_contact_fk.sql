alter table demo.eba_cust_product_uses
    add constraint eba_cust_prod_uses_contact_fk
        foreign key ( customer_contact_id )
            references demo.eba_cust_contacts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"5d204fb950e173e17cea1ee3c2ff02a18882f0bb","type":"REF_CONSTRAINT","name":"EBA_CUST_PROD_USES_CONTACT_FK","schemaName":"DEMO","sxml":""}