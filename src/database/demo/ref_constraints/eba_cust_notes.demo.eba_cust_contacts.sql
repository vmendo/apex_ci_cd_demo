alter table demo.eba_cust_notes
    add
        foreign key ( contact_id )
            references demo.eba_cust_contacts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"60f78281a49c9fcce923eb534d5149845ad7a5cc","type":"REF_CONSTRAINT","name":"EBA_CUST_NOTES.DEMO.EBA_CUST_CONTACTS","schemaName":"DEMO","sxml":""}