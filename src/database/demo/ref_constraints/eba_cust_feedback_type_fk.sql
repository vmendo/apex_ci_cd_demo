alter table demo.eba_cust_feedback
    add constraint eba_cust_feedback_type_fk
        foreign key ( type_id )
            references demo.eba_cust_feedback_types ( id )
        enable;


-- sqlcl_snapshot {"hash":"89a884c547cb3df41272cfd540cedb363dfc1e93","type":"REF_CONSTRAINT","name":"EBA_CUST_FEEDBACK_TYPE_FK","schemaName":"DEMO","sxml":""}