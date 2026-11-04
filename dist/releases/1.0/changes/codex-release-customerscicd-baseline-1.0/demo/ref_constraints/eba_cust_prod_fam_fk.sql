-- liquibase formatted sql
-- changeset DEMO:1793805467971 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_prod_fam_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_prod_fam_fk.sql:null:4ea751201fe0193aad197ea6d438a8be5af38742:create

alter table ${demo}.eba_cust_products
    add constraint eba_cust_prod_fam_fk
        foreign key ( product_family_id )
            references ${demo}.eba_cust_product_families ( id )
                on delete cascade
        enable;

