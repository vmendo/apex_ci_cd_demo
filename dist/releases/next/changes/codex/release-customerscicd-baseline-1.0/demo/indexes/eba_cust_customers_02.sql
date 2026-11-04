-- liquibase formatted sql
-- changeset DEMO:1793805253005 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_customers_02.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_customers_02.sql:null:ec367c11cde4198102f9ece613cbb0598919789a:create

create index ${demo}.eba_cust_customers_02 on
    ${demo}.eba_cust_customers (
        category_id
    );

