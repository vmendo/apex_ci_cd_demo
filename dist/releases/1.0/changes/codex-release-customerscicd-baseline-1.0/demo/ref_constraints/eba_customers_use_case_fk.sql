-- liquibase formatted sql
-- changeset DEMO:1793805468019 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_customers_use_case_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_customers_use_case_fk.sql:null:7293247185fe2962893221b2b4d66e00e952b7e9:create

alter table ${demo}.eba_cust_customers
    add constraint eba_customers_use_case_fk
        foreign key ( use_case_id )
            references ${demo}.eba_cust_use_case ( id )
                on delete cascade
        enable;

