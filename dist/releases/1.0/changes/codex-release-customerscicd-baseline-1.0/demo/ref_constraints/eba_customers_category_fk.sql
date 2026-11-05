-- liquibase formatted sql
-- changeset DEMO:1793874433508 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_customers_category_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_customers_category_fk.sql:null:b61eb959733cf88bffec73a093fb832e52239dd6:create

alter table ${demo}.eba_cust_customers
    add constraint eba_customers_category_fk
        foreign key ( category_id )
            references ${demo}.eba_cust_categories ( id )
                on delete cascade
        enable;

