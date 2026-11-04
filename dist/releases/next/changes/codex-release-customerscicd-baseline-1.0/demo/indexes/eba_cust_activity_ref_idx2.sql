-- liquibase formatted sql
-- changeset DEMO:1793805467241 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_activity_ref_idx2.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_activity_ref_idx2.sql:null:fe9f5de49ba1e5c3e6d262883e8cea348062aad2:create

create index ${demo}.eba_cust_activity_ref_idx2 on
    ${demo}.eba_cust_activity_ref (
        customer_id
    );

