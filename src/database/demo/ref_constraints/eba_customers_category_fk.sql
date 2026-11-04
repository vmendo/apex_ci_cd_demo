alter table demo.eba_cust_customers
    add constraint eba_customers_category_fk
        foreign key ( category_id )
            references demo.eba_cust_categories ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"8b658b5a63cbad7e8d4c7f3005e3607fb878cfba","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_CATEGORY_FK","schemaName":"DEMO","sxml":""}