alter table demo.demo_trn_certifications
    add constraint demo_trn_certifications_fk2
        foreign key ( course_id )
            references demo.demo_trn_courses ( id )
        enable;


-- sqlcl_snapshot {"hash":"5e8d476b22d0c6013b8799b503eef3f813438c63","type":"REF_CONSTRAINT","name":"DEMO_TRN_CERTIFICATIONS_FK2","schemaName":"DEMO","sxml":""}