-- liquibase formatted sql
-- changeset DEMO:1793967273029 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_evaluations_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_evaluations_fk1.sql:null:6faa11dc12ab0b0690a96808b22c9600f0a96ea7:create

alter table ${demo}.demo_trn_evaluations
    add constraint demo_trn_evaluations_fk1
        foreign key ( enrollment_id )
            references ${demo}.demo_trn_enrollments ( id )
        enable;

