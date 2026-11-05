-- liquibase formatted sql
-- changeset DEMO:1793891578287 stripComments:false  logicalFilePath:certifications-1.1/demo/indexes/demo_trn_certifications_fk1_ix.sql
-- sqlcl_snapshot src/database/demo/indexes/demo_trn_certifications_fk1_ix.sql:null:e3554f21d88b2a494c18930d6c1fd8c57b46fde8:create

create index ${demo}.demo_trn_certifications_fk1_ix on
    ${demo}.demo_trn_certifications (
        employee_id
    );

