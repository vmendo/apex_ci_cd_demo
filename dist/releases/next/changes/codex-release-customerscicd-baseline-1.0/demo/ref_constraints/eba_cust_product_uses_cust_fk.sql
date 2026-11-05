-- liquibase formatted sql
-- changeset DEMO:1793874433478 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_product_uses_cust_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_product_uses_cust_fk.sql:null:2d038f7964d8e718a9cc850076652166a4032541:create

alter table ${demo}.eba_cust_product_uses
    add constraint eba_cust_product_uses_cust_fk
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

