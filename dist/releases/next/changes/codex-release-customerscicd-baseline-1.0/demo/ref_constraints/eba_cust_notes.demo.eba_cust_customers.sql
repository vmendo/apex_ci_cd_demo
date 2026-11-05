-- liquibase formatted sql
-- changeset DEMO:1793874433433 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_notes.demo.eba_cust_customers.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_notes.demo.eba_cust_customers.sql:null:5030a38b5db97159bebebeec09bbcca246a538b2:create

alter table ${demo}.eba_cust_notes
    add
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

