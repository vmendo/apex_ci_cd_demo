alter table demo.eba_cust_activities
    add constraint eba_cust_activities_fk
        foreign key ( type_id )
            references demo.eba_cust_activity_types ( id )
        enable;


-- sqlcl_snapshot {"hash":"39271bb7cd931710861dee3ad9d842f0d78b30ac","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITIES_FK","schemaName":"DEMO","sxml":""}