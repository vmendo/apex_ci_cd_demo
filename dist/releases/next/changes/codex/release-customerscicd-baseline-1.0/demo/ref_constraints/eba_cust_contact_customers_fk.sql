-- liquibase formatted sql
-- changeset DEMO:1793805253955 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_contact_customers_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_contact_customers_fk.sql:null:b7f989f3f959dd2f49a6f3c4aff5831978d78453:create

alter table ${demo}.eba_cust_contacts
    add constraint eba_cust_contact_customers_fk
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

