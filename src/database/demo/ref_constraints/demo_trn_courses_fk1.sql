alter table demo.demo_trn_courses
    add constraint demo_trn_courses_fk1
        foreign key ( category_id )
            references demo.demo_trn_categories ( id )
        enable;


-- sqlcl_snapshot {"hash":"1affcd1de7d2007ac0a8ad85c794dc6984146bc0","type":"REF_CONSTRAINT","name":"DEMO_TRN_COURSES_FK1","schemaName":"DEMO","sxml":""}