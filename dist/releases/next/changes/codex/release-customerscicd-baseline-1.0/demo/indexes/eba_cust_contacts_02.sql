-- liquibase formatted sql
-- changeset DEMO:1793805252952 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_contacts_02.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_contacts_02.sql:null:847050e1f3fd94d3f6e388428ad69931af63b6ca:create

create index ${demo}.eba_cust_contacts_02 on
    ${demo}.eba_cust_contacts (
        contact_type_id
    );

