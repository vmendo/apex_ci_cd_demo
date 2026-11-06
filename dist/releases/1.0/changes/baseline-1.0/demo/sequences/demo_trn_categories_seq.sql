-- liquibase formatted sql
-- changeset DEMO:1793967273060 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_categories_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_categories_seq.sql:null:5cccf11453fda659f8f7beb96122c38dc14331a4:create

create sequence ${demo}.demo_trn_categories_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

