-- liquibase formatted sql
-- changeset DEMO:1793805254091 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_customers_status_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_customers_status_fk.sql:null:ae000f44505accc4d23e82a44d4241612ce2a574:create

alter table ${demo}.eba_cust_customers
    add constraint eba_customers_status_fk
        foreign key ( status_id )
            references ${demo}.eba_cust_status ( id )
                on delete cascade
        enable;

