-- liquibase formatted sql
-- changeset DEMO:1793805467387 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_verify_idx1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_verify_idx1.sql:null:24bde2ab32f77b0a8ac1fa29b45b45f939cb8b07:create

create index ${demo}.eba_cust_verify_idx1 on
    ${demo}.eba_cust_verifications (
        cust_id
    );

