alter table demo.eba_cust_products
    add constraint eba_cust_prod_fam_fk
        foreign key ( product_family_id )
            references demo.eba_cust_product_families ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"aae26225911f72a62a171da07b9100537649354f","type":"REF_CONSTRAINT","name":"EBA_CUST_PROD_FAM_FK","schemaName":"DEMO","sxml":""}