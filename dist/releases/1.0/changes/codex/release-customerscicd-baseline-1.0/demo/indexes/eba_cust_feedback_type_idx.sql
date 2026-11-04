-- liquibase formatted sql
-- changeset DEMO:1793805253038 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_feedback_type_idx.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_feedback_type_idx.sql:null:68dd9527395fd3925e5e182d5baf9cdc9a2e21d4:create

create index ${demo}.eba_cust_feedback_type_idx on
    ${demo}.eba_cust_feedback (
        type_id
    );

