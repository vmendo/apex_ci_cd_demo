-- liquibase formatted sql
-- changeset DEMO:1793874432487 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_notes_contact_idx.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_notes_contact_idx.sql:null:c9ccd8db7dcd4ac034847ac75d8d2120a862be18:create

create index ${demo}.eba_cust_notes_contact_idx on
    ${demo}.eba_cust_notes (
        contact_id
    );

