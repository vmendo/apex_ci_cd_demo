alter table demo.eba_cust_users
    add constraint eba_cust_users_acc_level_fk
        foreign key ( access_level_id )
            references demo.eba_cust_access_levels ( id )
        enable;


-- sqlcl_snapshot {"hash":"26e65c869548471a1ae546ade17435096fbb3f97","type":"REF_CONSTRAINT","name":"EBA_CUST_USERS_ACC_LEVEL_FK","schemaName":"DEMO","sxml":""}