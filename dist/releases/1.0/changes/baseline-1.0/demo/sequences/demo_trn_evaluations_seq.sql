-- liquibase formatted sql
-- changeset DEMO:1793890723464 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_evaluations_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_evaluations_seq.sql:null:38ba2c38321a19356d47cb86180297a45ad621e7:create

create sequence ${demo}.demo_trn_evaluations_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

