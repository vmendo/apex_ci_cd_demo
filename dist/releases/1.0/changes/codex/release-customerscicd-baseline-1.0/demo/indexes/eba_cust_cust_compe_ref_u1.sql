-- liquibase formatted sql
-- changeset DEMO:1793805252981 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_cust_compe_ref_u1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_cust_compe_ref_u1.sql:null:b60b71bb7bd6c9bca376b14b9bd157f1cbe4e8c5:create

create unique index ${demo}.eba_cust_cust_compe_ref_u1 on
    ${demo}.eba_cust_cust_competitor_ref (
        customer_id,
        competitor_id
    );

