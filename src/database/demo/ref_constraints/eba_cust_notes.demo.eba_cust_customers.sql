alter table demo.eba_cust_notes
    add
        foreign key ( customer_id )
            references demo.eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"32e304e4af34c2ccd15561c4438c92b48400e485","type":"REF_CONSTRAINT","name":"EBA_CUST_NOTES.DEMO.EBA_CUST_CUSTOMERS","schemaName":"DEMO","sxml":""}