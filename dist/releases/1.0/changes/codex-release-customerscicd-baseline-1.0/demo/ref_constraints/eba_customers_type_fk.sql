-- liquibase formatted sql
-- changeset DEMO:1793805468035 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_customers_type_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_customers_type_fk.sql:null:3c6ef7b7318f6ea236e709393a64fb7e60c0d5b9:create

alter table ${demo}.eba_cust_customers
    add constraint eba_customers_type_fk
        foreign key ( type_id )
            references ${demo}.eba_cust_type ( id )
                on delete cascade
        enable;

