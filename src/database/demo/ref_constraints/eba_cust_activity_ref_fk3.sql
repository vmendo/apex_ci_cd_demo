alter table demo.eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk3
        foreign key ( contact_id )
            references demo.eba_cust_contacts ( id )
                on delete set null
        enable;


-- sqlcl_snapshot {"hash":"7effbe45635b67940ee1d0e5c6d1d068031690aa","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITY_REF_FK3","schemaName":"DEMO","sxml":""}