-- liquibase formatted sql
-- changeset DEMO:1793890723403 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_sessions_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_sessions_fk1.sql:null:d880cc323c26fe9d5cd9137dbcc318fb67ed033e:create

alter table ${demo}.demo_trn_sessions
    add constraint demo_trn_sessions_fk1
        foreign key ( course_id )
            references ${demo}.demo_trn_courses ( id )
        enable;

