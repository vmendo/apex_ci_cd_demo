-- liquibase formatted sql
-- changeset DEMO:1793891578283 stripComments:false  logicalFilePath:certifications-1.1/demo/indexes/demo_trn_certifications_fk2_ix.sql
-- sqlcl_snapshot src/database/demo/indexes/demo_trn_certifications_fk2_ix.sql:null:c09a3e795e5f907c0417e4217e1c9ead5e4a9831:create

create index ${demo}.demo_trn_certifications_fk2_ix on
    ${demo}.demo_trn_certifications (
        course_id
    );

