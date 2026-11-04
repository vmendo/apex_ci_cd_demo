-- liquibase formatted sql
-- changeset DEMO:1793805467335 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_impl_partners_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_impl_partners_uk.sql:null:2174f9725e3f4396f8728bfa16d4a234d1df33c1:create

create unique index ${demo}.eba_cust_impl_partners_uk on
    ${demo}.eba_cust_impl_partners (
        name
    );

