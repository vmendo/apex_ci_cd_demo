-- liquibase formatted sql
-- changeset DEMO:1793890723337 stripComments:false  logicalFilePath:baseline-1.0/demo/indexes/demo_trn_courses_fk1_ix.sql
-- sqlcl_snapshot src/database/demo/indexes/demo_trn_courses_fk1_ix.sql:null:1eeb990fcf7e6e081d6c29701fa627b99f0f3cf2:create

create index ${demo}.demo_trn_courses_fk1_ix on
    ${demo}.demo_trn_courses (
        category_id
    );

