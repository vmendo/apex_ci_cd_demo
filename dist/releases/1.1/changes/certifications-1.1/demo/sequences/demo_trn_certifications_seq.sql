-- liquibase formatted sql
-- changeset DEMO:1793891578278 stripComments:false  logicalFilePath:certifications-1.1/demo/sequences/demo_trn_certifications_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_certifications_seq.sql:null:372874619cf4da5a69a3a21b26a7e42cb0fc2a05:create

create sequence ${demo}.demo_trn_certifications_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */
cache 20 noorder nocycle nokeep noscale global;

