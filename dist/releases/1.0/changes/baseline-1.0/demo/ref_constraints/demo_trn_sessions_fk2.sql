-- liquibase formatted sql
-- changeset DEMO:1793890723392 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_sessions_fk2.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_sessions_fk2.sql:null:a3abf4229954678644390b2d2e466844a42ae768:create

alter table ${demo}.demo_trn_sessions
    add constraint demo_trn_sessions_fk2
        foreign key ( instructor_id )
            references ${demo}.demo_trn_instructors ( id )
        enable;

