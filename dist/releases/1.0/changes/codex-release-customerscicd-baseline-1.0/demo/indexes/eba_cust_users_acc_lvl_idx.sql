-- liquibase formatted sql
-- changeset DEMO:1793805467369 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_users_acc_lvl_idx.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_users_acc_lvl_idx.sql:null:15f388d7f2f08a76edd73d938667a60ec3b9cbbf:create

create index ${demo}.eba_cust_users_acc_lvl_idx on
    ${demo}.eba_cust_users (
        access_level_id
    );

