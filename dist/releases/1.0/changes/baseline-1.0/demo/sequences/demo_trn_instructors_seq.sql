-- liquibase formatted sql
-- changeset DEMO:1793890723457 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_instructors_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_instructors_seq.sql:null:45926497c1e4ee80ec90450191db756b49b16eab:create

create sequence ${demo}.demo_trn_instructors_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

