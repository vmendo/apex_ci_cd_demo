-- liquibase formatted sql
-- changeset DEMO:1793805253073 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_files_01.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_files_01.sql:null:68d4c2e32449ac140d2040e9557a439d06c2ba07:create

create index ${demo}.eba_cust_files_01 on
    ${demo}.eba_cust_files (
        customer_id
    );

