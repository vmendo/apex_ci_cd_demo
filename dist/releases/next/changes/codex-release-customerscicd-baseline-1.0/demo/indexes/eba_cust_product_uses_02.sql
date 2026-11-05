-- liquibase formatted sql
-- changeset DEMO:1793874432546 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_product_uses_02.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_product_uses_02.sql:null:43b815616d93e759bb7be144a733f93c2dab046c:create

create index ${demo}.eba_cust_product_uses_02 on
    ${demo}.eba_cust_product_uses (
        product_id
    );

