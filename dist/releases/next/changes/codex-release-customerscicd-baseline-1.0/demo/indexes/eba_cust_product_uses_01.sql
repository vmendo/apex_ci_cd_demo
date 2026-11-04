-- liquibase formatted sql
-- changeset DEMO:1793805467377 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_product_uses_01.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_product_uses_01.sql:null:18aeaa05c77b0452adcdf431c823d83d6584c5cd:create

create index ${demo}.eba_cust_product_uses_01 on
    ${demo}.eba_cust_product_uses (
        customer_id
    );

