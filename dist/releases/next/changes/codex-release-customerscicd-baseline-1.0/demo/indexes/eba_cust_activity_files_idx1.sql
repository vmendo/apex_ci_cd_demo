-- liquibase formatted sql
-- changeset DEMO:1793874432315 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_activity_files_idx1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_activity_files_idx1.sql:null:0822747f10b83252b90b249c23c27c7da3dfb1a5:create

create index ${demo}.eba_cust_activity_files_idx1 on
    ${demo}.eba_cust_activity_files (
        activity_id
    );

