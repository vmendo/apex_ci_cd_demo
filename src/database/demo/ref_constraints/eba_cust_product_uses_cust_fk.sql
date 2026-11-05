alter table demo.eba_cust_product_uses
    add constraint eba_cust_product_uses_cust_fk
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"3d34c18fd43dbe613819695c824588bcf1c0df6a","type":"REF_CONSTRAINT","name":"EBA_CUST_PRODUCT_USES_CUST_FK","schemaName":"DEMO","sxml":""}