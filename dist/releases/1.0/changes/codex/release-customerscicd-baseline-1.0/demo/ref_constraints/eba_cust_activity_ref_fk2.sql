-- liquibase formatted sql
-- changeset DEMO:1793805253901 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_activity_ref_fk2.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_activity_ref_fk2.sql:null:cdfd9a93c16cd255583c9e5c9436fd6a0697844a:create

alter table ${demo}.eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk2
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

