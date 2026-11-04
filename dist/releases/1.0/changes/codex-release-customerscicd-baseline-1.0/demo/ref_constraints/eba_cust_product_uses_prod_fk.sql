-- liquibase formatted sql
-- changeset DEMO:1793805467992 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_product_uses_prod_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_product_uses_prod_fk.sql:null:3339b2318e15a9c04bba0f952791861894a473ec:create

alter table ${demo}.eba_cust_product_uses
    add constraint eba_cust_product_uses_prod_fk
        foreign key ( product_id )
            references ${demo}.eba_cust_products ( id )
                on delete cascade
        enable;

