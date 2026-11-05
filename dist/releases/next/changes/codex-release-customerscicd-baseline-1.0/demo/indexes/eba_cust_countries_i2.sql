-- liquibase formatted sql
-- changeset DEMO:1793874432423 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_countries_i2.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_countries_i2.sql:null:a04a62e18038c76dbb0d50c8f07bfec0f9a1141a:create

create unique index ${demo}.eba_cust_countries_i2 on
    ${demo}.eba_cust_countries (
        country_name
    );

