-- liquibase formatted sql
-- changeset DEMO:1793805252963 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_competitors_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_competitors_uk.sql:null:dd298adff931383ee42ac68b85c53b1de8e1e8f9:create

create unique index ${demo}.eba_cust_competitors_uk on
    ${demo}.eba_cust_competitors (
        name
    );

