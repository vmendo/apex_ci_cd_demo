-- liquibase formatted sql
-- changeset DEMO:1793967272971 stripComments:false  logicalFilePath:baseline-1.0/demo/indexes/demo_trn_enrollments_fk2_ix.sql
-- sqlcl_snapshot src/database/demo/indexes/demo_trn_enrollments_fk2_ix.sql:null:e49c009058ec70214aa8cb45f454c133ce92b8c7:create

create index ${demo}.demo_trn_enrollments_fk2_ix on
    ${demo}.demo_trn_enrollments (
        employee_id
    );

