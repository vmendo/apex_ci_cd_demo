alter table demo.eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_fk2
        foreign key ( partner_id )
            references demo.eba_cust_impl_partners ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"50b9cc7ae409592ab59d664f61391991e26c6ca5","type":"REF_CONSTRAINT","name":"EBA_CUST_CUST_PART_FK2","schemaName":"DEMO","sxml":""}