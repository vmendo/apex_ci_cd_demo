alter table demo.eba_cust_acl_features
    add constraint eba_cust_acl_features_fk
        foreign key ( access_level_id )
            references demo.eba_cust_access_levels ( id )
        enable;


-- sqlcl_snapshot {"hash":"fb76a1b8ee2aa897c9bf304ac5764a851b618cca","type":"REF_CONSTRAINT","name":"EBA_CUST_ACL_FEATURES_FK","schemaName":"DEMO","sxml":""}