-- liquibase formatted sql
-- changeset DEMO:1793967272978 stripComments:false  logicalFilePath:baseline-1.0/demo/indexes/demo_trn_sessions_fk3_ix.sql
-- sqlcl_snapshot src/database/demo/indexes/demo_trn_sessions_fk3_ix.sql:null:32e507855072976cae04bc1e4f29cfcb740e12ea:create

create index ${demo}.demo_trn_sessions_fk3_ix on
    ${demo}.demo_trn_sessions (
        room_id
    );

