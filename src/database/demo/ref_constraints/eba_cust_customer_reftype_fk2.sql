alter table demo.eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_fk2
        foreign key ( reference_type_id )
            references demo.eba_cust_reference_types ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"34cc6723e8eefc03d2766c6d9dc2a8fede4d554f","type":"REF_CONSTRAINT","name":"EBA_CUST_CUSTOMER_REFTYPE_FK2","schemaName":"DEMO","sxml":""}