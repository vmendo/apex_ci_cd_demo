-- liquibase formatted sql
-- changeset DEMO:1793805254088 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_customers_parent_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_customers_parent_fk.sql:null:d4c39bb51f76219d4449eb25cd724f86abe093d6:create

alter table ${demo}.eba_cust_customers
    add constraint eba_customers_parent_fk
        foreign key ( parent_customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

