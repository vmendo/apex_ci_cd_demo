-- liquibase formatted sql
-- changeset DEMO:1793805253099 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_prod_families_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_prod_families_uk.sql:null:8de9c0390bb429ed9fd7bf9d8919908f05102687:create

create unique index ${demo}.eba_cust_prod_families_uk on
    ${demo}.eba_cust_product_families (
        name
    );

