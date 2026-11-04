alter table demo.eba_cust_issues
    add
        foreign key ( product_id )
            references demo.eba_cust_products ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"92d091702fd5bc9c0caa797ff59372a3883edbc1","type":"REF_CONSTRAINT","name":"EBA_CUST_ISSUES.DEMO.EBA_CUST_PRODUCTS","schemaName":"DEMO","sxml":""}