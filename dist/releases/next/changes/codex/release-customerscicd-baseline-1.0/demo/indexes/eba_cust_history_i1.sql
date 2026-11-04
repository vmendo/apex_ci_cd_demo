-- liquibase formatted sql
-- changeset DEMO:1793805253069 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_history_i1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_history_i1.sql:null:5b4efd686a18250d4809eddf253c171709b059af:create

create index ${demo}.eba_cust_history_i1 on
    ${demo}.eba_cust_history (
        component_id
    );

