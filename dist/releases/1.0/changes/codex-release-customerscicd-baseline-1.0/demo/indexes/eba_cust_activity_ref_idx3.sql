-- liquibase formatted sql
-- changeset DEMO:1793805467232 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_activity_ref_idx3.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_activity_ref_idx3.sql:null:ee96b4c873ce65a83b6d3b58bb89a1250967a6b6:create

create index ${demo}.eba_cust_activity_ref_idx3 on
    ${demo}.eba_cust_activity_ref (
        contact_id
    );

