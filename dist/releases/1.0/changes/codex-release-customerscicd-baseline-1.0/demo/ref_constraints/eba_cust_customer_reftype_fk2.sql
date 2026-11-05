-- liquibase formatted sql
-- changeset DEMO:1793874433395 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_customer_reftype_fk2.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_customer_reftype_fk2.sql:null:d98ed8bdaa987fb8b3de7f9e099472b05683ae71:create

alter table ${demo}.eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_fk2
        foreign key ( reference_type_id )
            references ${demo}.eba_cust_reference_types ( id )
                on delete cascade
        enable;

