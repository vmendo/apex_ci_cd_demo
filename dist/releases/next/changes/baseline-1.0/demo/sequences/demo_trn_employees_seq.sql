-- liquibase formatted sql
-- changeset DEMO:1793890723478 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_employees_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_employees_seq.sql:null:ec4c90e6aa1ad29e1b553aec744463a8787c5a7f:create

create sequence ${demo}.demo_trn_employees_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

