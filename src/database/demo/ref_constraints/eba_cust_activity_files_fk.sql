alter table demo.eba_cust_activity_files
    add constraint eba_cust_activity_files_fk
        foreign key ( activity_id )
            references demo.eba_cust_activities ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"d29019b95034f125d5ed16c1e675499a522a4e05","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITY_FILES_FK","schemaName":"DEMO","sxml":""}