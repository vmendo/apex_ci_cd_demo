-- liquibase formatted sql
-- changeset DEMO:1793874433356 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_cust_part_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_cust_part_fk.sql:null:c8a1210fab49cc36c5eec7be1cda96db53f97be8:create

alter table ${demo}.eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_fk
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

