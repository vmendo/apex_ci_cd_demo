-- liquibase formatted sql
-- changeset DEMO:1793805253971 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_customer_reftype_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_customer_reftype_fk1.sql:null:3d74056672659dec5ea29e6f6414437ad127da81:create

alter table ${demo}.eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_fk1
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

