-- liquibase formatted sql
-- changeset DEMO:1793805253946 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_contact_type_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_contact_type_fk.sql:null:d3d3ac1e430676fda91b44fa26cf9f2a4120a57f:create

alter table ${demo}.eba_cust_contacts
    add constraint eba_cust_contact_type_fk
        foreign key ( contact_type_id )
            references ${demo}.eba_cust_contact_types ( id )
                on delete cascade
        enable;

