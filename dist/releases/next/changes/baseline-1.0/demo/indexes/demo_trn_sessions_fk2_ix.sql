-- liquibase formatted sql
-- changeset DEMO:1793890723317 stripComments:false  logicalFilePath:baseline-1.0/demo/indexes/demo_trn_sessions_fk2_ix.sql
-- sqlcl_snapshot src/database/demo/indexes/demo_trn_sessions_fk2_ix.sql:null:eefa123eb9986596fb2aded5f4132d344ad6c085:create

create index ${demo}.demo_trn_sessions_fk2_ix on
    ${demo}.demo_trn_sessions (
        instructor_id
    );

