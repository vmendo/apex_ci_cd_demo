-- liquibase formatted sql
-- changeset DEMO:1793805467270 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_customers_01.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_customers_01.sql:null:b1a101e9f00f11f011736763df55af09a0fe96b3:create

create index ${demo}.eba_cust_customers_01 on
    ${demo}.eba_cust_customers (
        industry_id
    );

