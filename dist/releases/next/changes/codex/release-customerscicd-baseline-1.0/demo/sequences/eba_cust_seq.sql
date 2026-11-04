-- liquibase formatted sql
-- changeset DEMO:1793805257984 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/sequences/eba_cust_seq.sql
-- sqlcl_snapshot src/database/demo/sequences/eba_cust_seq.sql:null:82fe36e90747627575c8470dde3e02729245fe8c:create

create sequence ${demo}.eba_cust_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder
nocycle nokeep noscale global;

