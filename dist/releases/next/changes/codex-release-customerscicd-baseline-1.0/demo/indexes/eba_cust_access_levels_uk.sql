-- liquibase formatted sql
-- changeset DEMO:1793805467210 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_access_levels_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_access_levels_uk.sql:null:e04c280f741e5e8103441979fe0186e70e54f493:create

create unique index ${demo}.eba_cust_access_levels_uk on
    ${demo}.eba_cust_access_levels (
        access_level
    );

