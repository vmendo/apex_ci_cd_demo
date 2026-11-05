-- liquibase formatted sql
-- changeset DEMO:1793874432437 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_customers_03.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_customers_03.sql:null:b29b91a8637d4af0a4f694a57328fdb6cac2aa84:create

create index ${demo}.eba_cust_customers_03 on
    ${demo}.eba_cust_customers (
        status_id
    );

