alter table demo.demo_trn_employees
    add constraint demo_trn_employees_fk1
        foreign key ( department_id )
            references demo.demo_trn_departments ( id )
        enable;


-- sqlcl_snapshot {"hash":"b6609d83eb383cdf6f81cf75e0ae4e57a5fc8cd8","type":"REF_CONSTRAINT","name":"DEMO_TRN_EMPLOYEES_FK1","schemaName":"DEMO","sxml":""}