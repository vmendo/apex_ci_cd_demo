alter table demo.demo_trn_enrollments
    add constraint demo_trn_enrollments_fk1
        foreign key ( session_id )
            references demo.demo_trn_sessions ( id )
        enable;


-- sqlcl_snapshot {"hash":"5dd1e3622967a722fdcc4379d83bdd67b3dfbe0d","type":"REF_CONSTRAINT","name":"DEMO_TRN_ENROLLMENTS_FK1","schemaName":"DEMO","sxml":""}