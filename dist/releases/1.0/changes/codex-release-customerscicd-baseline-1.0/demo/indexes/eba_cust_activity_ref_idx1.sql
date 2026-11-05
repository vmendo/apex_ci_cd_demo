-- liquibase formatted sql
-- changeset DEMO:1793874432310 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_activity_ref_idx1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_activity_ref_idx1.sql:null:bebb12e0c8fe67c7170d8bbc7a00ede488a15fee:create

create index ${demo}.eba_cust_activity_ref_idx1 on
    ${demo}.eba_cust_activity_ref (
        activity_id
    );

