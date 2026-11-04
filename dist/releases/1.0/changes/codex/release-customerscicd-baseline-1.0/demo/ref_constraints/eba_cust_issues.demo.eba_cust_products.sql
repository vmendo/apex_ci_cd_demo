-- liquibase formatted sql
-- changeset DEMO:1793805254034 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_issues.demo.eba_cust_products.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_issues.demo.eba_cust_products.sql:null:1db094f9164ad49271c66f55330d8e143a631c2e:create

alter table ${demo}.eba_cust_issues
    add
        foreign key ( product_id )
            references ${demo}.eba_cust_products ( id )
                on delete cascade
        enable;

