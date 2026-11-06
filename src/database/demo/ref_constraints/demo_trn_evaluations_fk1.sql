alter table demo.demo_trn_evaluations
    add constraint demo_trn_evaluations_fk1
        foreign key ( enrollment_id )
            references demo.demo_trn_enrollments ( id )
        enable;


-- sqlcl_snapshot {"hash":"7cdd93fd6187562dd59ebd5fc8260c6e26773581","type":"REF_CONSTRAINT","name":"DEMO_TRN_EVALUATIONS_FK1","schemaName":"DEMO","sxml":""}