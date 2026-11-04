alter table demo.eba_cust_product_uses
    add constraint eba_cust_product_uses_prod_fk
        foreign key ( product_id )
            references demo.eba_cust_products ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"b1374620e32bcbf4dfd5f4524b8d4657b4bc1f2c","type":"REF_CONSTRAINT","name":"EBA_CUST_PRODUCT_USES_PROD_FK","schemaName":"DEMO","sxml":""}