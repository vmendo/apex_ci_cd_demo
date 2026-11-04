-- liquibase formatted sql
-- changeset DEMO:1793805253033 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_customers_05.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_customers_05.sql:null:a0205047dd6bd7aa3fca68d81438bd8e534b642d:create

create index ${demo}.eba_cust_customers_05 on
    ${demo}.eba_cust_customers (
        type_id
    );

