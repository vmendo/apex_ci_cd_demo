-- liquibase formatted sql
-- changeset DEMO:1793967273103 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_departments_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_departments_seq.sql:null:df94ac6cf08263b308eb33c7a1e7df8c57eb1538:create

create sequence ${demo}.demo_trn_departments_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

