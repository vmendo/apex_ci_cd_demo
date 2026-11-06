-- liquibase formatted sql
-- changeset DEMO:1793967273047 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_enrollments_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_enrollments_fk1.sql:null:e9ccc046f60ac861f2abc3b1b433b99eca7a4a98:create

alter table ${demo}.demo_trn_enrollments
    add constraint demo_trn_enrollments_fk1
        foreign key ( session_id )
            references ${demo}.demo_trn_sessions ( id )
        enable;

