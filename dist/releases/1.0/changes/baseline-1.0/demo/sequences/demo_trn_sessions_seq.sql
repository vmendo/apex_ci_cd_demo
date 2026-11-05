-- liquibase formatted sql
-- changeset DEMO:1793890723484 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_sessions_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_sessions_seq.sql:null:2640e15d44c7c8542a03674e92ca275ad1845715:create

create sequence ${demo}.demo_trn_sessions_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

