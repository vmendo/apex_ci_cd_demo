-- liquibase formatted sql
-- changeset DEMO:1793805467346 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_notes_i1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_notes_i1.sql:null:1c4e0fcf2e185179957af41d76332034377778a1:create

create index ${demo}.eba_cust_notes_i1 on
    ${demo}.eba_cust_notes (
        customer_id
    );

