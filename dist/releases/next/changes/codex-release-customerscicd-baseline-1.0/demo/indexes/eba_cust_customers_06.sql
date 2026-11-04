-- liquibase formatted sql
-- changeset DEMO:1793805467299 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_customers_06.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_customers_06.sql:null:187e24cf22c01bac7acb93fe9e10278c5e6018bb:create

create index ${demo}.eba_cust_customers_06 on
    ${demo}.eba_cust_customers (
        use_case_id
    );

