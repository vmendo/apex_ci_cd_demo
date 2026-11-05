-- liquibase formatted sql
-- changeset DEMO:1793874432353 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_clicks_idx1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_clicks_idx1.sql:null:4c1e486b1f4217596f2a53b9ce955b1d85478d6e:create

create index ${demo}.eba_cust_clicks_idx1 on
    ${demo}.eba_cust_clicks (
        cust_id
    );

