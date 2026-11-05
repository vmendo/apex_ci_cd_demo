-- liquibase formatted sql
-- changeset DEMO:1793874432432 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_customers_04.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_customers_04.sql:null:3968f49f8891648272150614c430767304c5413f:create

create index ${demo}.eba_cust_customers_04 on
    ${demo}.eba_cust_customers (
        geography_id,
        country_id
    );

