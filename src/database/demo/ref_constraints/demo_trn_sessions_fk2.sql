alter table demo.demo_trn_sessions
    add constraint demo_trn_sessions_fk2
        foreign key ( instructor_id )
            references demo.demo_trn_instructors ( id )
        enable;


-- sqlcl_snapshot {"hash":"ab4766048af4a925741459d86ff004b04d51ea11","type":"REF_CONSTRAINT","name":"DEMO_TRN_SESSIONS_FK2","schemaName":"DEMO","sxml":""}