-- liquibase formatted sql
-- changeset DEMO:1793805254001 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_files_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_files_fk.sql:null:5e11e16970a7e1275efeecf3a831cdee8534c552:create

alter table ${demo}.eba_cust_files
    add constraint eba_cust_files_fk
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

