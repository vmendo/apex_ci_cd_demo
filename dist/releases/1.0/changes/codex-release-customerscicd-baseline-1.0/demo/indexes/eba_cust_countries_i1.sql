-- liquibase formatted sql
-- changeset DEMO:1793805467263 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_countries_i1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_countries_i1.sql:null:105283d95e5df215ce6a39477264d6eb13043c4a:create

create unique index ${demo}.eba_cust_countries_i1 on
    ${demo}.eba_cust_countries (
        country_code
    );

