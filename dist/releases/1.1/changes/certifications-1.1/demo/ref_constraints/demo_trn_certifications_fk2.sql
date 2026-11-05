-- liquibase formatted sql
-- changeset DEMO:1793891578264 stripComments:false  logicalFilePath:certifications-1.1/demo/ref_constraints/demo_trn_certifications_fk2.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_certifications_fk2.sql:null:87c19aaf68b55bc75c31c2904adc5eab44c5471e:create

alter table ${demo}.demo_trn_certifications
    add constraint demo_trn_certifications_fk2
        foreign key ( course_id )
            references ${demo}.demo_trn_courses ( id )
        enable;

