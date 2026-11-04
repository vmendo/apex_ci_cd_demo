-- liquibase formatted sql
-- changeset DEMO:1793805252974 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_cust_partner_ref_u1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_cust_partner_ref_u1.sql:null:5f9c2ccae3eb369804311661814637f3d4927ce3:create

create unique index ${demo}.eba_cust_cust_partner_ref_u1 on
    ${demo}.eba_cust_cust_partner_ref (
        customer_id,
        partner_id
    );

