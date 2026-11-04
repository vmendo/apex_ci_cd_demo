-- liquibase formatted sql
-- changeset DEMO:1793805253051 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_error_lookup_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_error_lookup_uk.sql:null:bfe62e963cade91bc4dd2c165076f70e8d81aa8b:create

create unique index ${demo}.eba_cust_error_lookup_uk on
    ${demo}.eba_cust_error_lookup (
        constraint_name,
        language_code
    );

