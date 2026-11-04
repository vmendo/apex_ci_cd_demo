-- liquibase formatted sql
-- changeset DEMO:1793805253023 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_customers_07.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_customers_07.sql:null:83a51ad45d523cf41f22b6da3899db6e1992f5d2:create

create index ${demo}.eba_cust_customers_07 on
    ${demo}.eba_cust_customers (
        parent_customer_id
    );

