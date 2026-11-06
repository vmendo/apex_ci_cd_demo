-- liquibase formatted sql
-- changeset DEMO:1793967273128 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_locations_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_locations_seq.sql:null:8ff27ce9f906608ee077aab5adf7148beb39c211:create

create sequence ${demo}.demo_trn_locations_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

