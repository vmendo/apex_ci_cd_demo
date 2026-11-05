-- liquibase formatted sql
-- changeset DEMO:1793890723365 stripComments:false  logicalFilePath:baseline-1.0/demo/indexes/demo_trn_sessions_fk1_ix.sql
-- sqlcl_snapshot src/database/demo/indexes/demo_trn_sessions_fk1_ix.sql:null:abe166ab7162c778e858bee288dfc5f1e27831b2:create

create index ${demo}.demo_trn_sessions_fk1_ix on
    ${demo}.demo_trn_sessions (
        course_id
    );

