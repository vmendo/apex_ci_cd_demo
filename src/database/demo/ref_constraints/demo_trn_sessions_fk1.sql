alter table demo.demo_trn_sessions
    add constraint demo_trn_sessions_fk1
        foreign key ( course_id )
            references demo.demo_trn_courses ( id )
        enable;


-- sqlcl_snapshot {"hash":"bb9de252ba020f93da401e64c0f3d19fcd4839fa","type":"REF_CONSTRAINT","name":"DEMO_TRN_SESSIONS_FK1","schemaName":"DEMO","sxml":""}