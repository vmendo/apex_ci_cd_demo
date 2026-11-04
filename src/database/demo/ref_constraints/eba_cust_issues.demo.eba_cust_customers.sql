alter table demo.eba_cust_issues
    add
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"21d25f2ad8fad254ccca627ced348e9b45aa6c38","type":"REF_CONSTRAINT","name":"EBA_CUST_ISSUES.DEMO.EBA_CUST_CUSTOMERS","schemaName":"DEMO","sxml":""}