-- liquibase formatted sql
-- changeset DEMO:1793890723379 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_enrollments_fk2.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_enrollments_fk2.sql:null:ab0499acd3a63c41f5a38684b2b2f3cd0ce27984:create

alter table ${demo}.demo_trn_enrollments
    add constraint demo_trn_enrollments_fk2
        foreign key ( employee_id )
            references ${demo}.demo_trn_employees ( id )
        enable;

