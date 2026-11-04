-- liquibase formatted sql
-- changeset DEMO:1793805253113 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_users_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_users_uk.sql:null:c8021c6e58365dbadc0aff48d15d4e17b065b8ca:create

create unique index ${demo}.eba_cust_users_uk on
    ${demo}.eba_cust_users (
        username
    );

