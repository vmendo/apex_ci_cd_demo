-- liquibase formatted sql
-- changeset DEMO:1793890723471 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_enrollments_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_enrollments_seq.sql:null:d727d25f160e4ae8549b99c1ac4e389345f363a7:create

create sequence ${demo}.demo_trn_enrollments_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

