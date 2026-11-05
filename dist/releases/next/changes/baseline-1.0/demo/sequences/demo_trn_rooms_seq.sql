-- liquibase formatted sql
-- changeset DEMO:1793890723493 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_rooms_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_rooms_seq.sql:null:f215083cfcfd5b723851512c5c45543035628583:create

create sequence ${demo}.demo_trn_rooms_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20
noorder nocycle nokeep noscale global;

