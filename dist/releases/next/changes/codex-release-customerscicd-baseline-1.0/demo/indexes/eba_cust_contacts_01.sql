-- liquibase formatted sql
-- changeset DEMO:1793874432399 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_contacts_01.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_contacts_01.sql:null:d256873ced50b11ed50d4406c540883eb39a83e4:create

create index ${demo}.eba_cust_contacts_01 on
    ${demo}.eba_cust_contacts (
        customer_id
    );

