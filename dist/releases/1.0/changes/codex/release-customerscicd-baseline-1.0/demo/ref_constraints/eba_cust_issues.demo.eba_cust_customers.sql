-- liquibase formatted sql
-- changeset DEMO:1793805254043 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_issues.demo.eba_cust_customers.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_issues.demo.eba_cust_customers.sql:null:686b1eadd1bd1008aebe6450712f01fe92808f2c:create

alter table ${demo}.eba_cust_issues
    add
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

