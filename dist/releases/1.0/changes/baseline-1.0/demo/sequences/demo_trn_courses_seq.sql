-- liquibase formatted sql
-- changeset DEMO:1793967273109 stripComments:false  logicalFilePath:baseline-1.0/demo/sequences/demo_trn_courses_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/demo_trn_courses_seq.sql:null:363517a05d2740b4da8bd9ae8ef8941c2033aa0c:create

create sequence ${demo}.demo_trn_courses_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache
20 noorder nocycle nokeep noscale global;

