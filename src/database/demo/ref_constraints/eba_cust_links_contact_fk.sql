alter table demo.eba_cust_links
    add constraint eba_cust_links_contact_fk
        foreign key ( contact_id )
            references demo.eba_cust_contacts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"c1943c50d8bf22a94662a8c0a2d87cad0421c960","type":"REF_CONSTRAINT","name":"EBA_CUST_LINKS_CONTACT_FK","schemaName":"DEMO","sxml":""}