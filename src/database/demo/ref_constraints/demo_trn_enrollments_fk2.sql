alter table demo.demo_trn_enrollments
    add constraint demo_trn_enrollments_fk2
        foreign key ( employee_id )
            references demo.demo_trn_employees ( id )
        enable;


-- sqlcl_snapshot {"hash":"7003d8b85ea2ae24d891ce7bb67c76d347951cc5","type":"REF_CONSTRAINT","name":"DEMO_TRN_ENROLLMENTS_FK2","schemaName":"DEMO","sxml":""}