-- liquibase formatted sql
-- changeset DEMO:1793890723358 stripComments:false  logicalFilePath:baseline-1.0/demo/indexes/demo_trn_employees_fk1_ix.sql
-- sqlcl_snapshot src/database/demo/indexes/demo_trn_employees_fk1_ix.sql:null:cbabb1851ce6d80cbd70705cadf93c641ce18bcc:create

create index ${demo}.demo_trn_employees_fk1_ix on
    ${demo}.demo_trn_employees (
        department_id
    );

