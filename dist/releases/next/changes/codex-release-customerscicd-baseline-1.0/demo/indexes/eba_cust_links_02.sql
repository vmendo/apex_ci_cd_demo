-- liquibase formatted sql
-- changeset DEMO:1793805467353 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_links_02.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_links_02.sql:null:a79ec97ba7f805fe07525b8e33e84364be74caf8:create

create index ${demo}.eba_cust_links_02 on
    ${demo}.eba_cust_links (
        contact_id
    );

