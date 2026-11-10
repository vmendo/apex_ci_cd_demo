alter table demo.demo_trn_certifications
    add constraint demo_trn_certifications_fk1
        foreign key ( employee_id )
            references demo.demo_trn_employees ( id )
        enable;


-- sqlcl_snapshot {"hash":"583e57001320e01071fcd0fbacde6123032827c8","type":"REF_CONSTRAINT","name":"DEMO_TRN_CERTIFICATIONS_FK1","schemaName":"DEMO","sxml":""}