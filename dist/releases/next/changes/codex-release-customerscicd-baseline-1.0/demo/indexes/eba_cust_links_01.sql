-- liquibase formatted sql
-- changeset DEMO:1793874432500 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_links_01.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_links_01.sql:null:c16fb9cad73e005b15aa69b1fbf08f90113142bb:create

create index ${demo}.eba_cust_links_01 on
    ${demo}.eba_cust_links (
        customer_id
    );

