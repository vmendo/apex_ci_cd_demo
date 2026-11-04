-- liquibase formatted sql
-- changeset DEMO:1793805254050 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_notes.demo.eba_cust_contacts.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_notes.demo.eba_cust_contacts.sql:null:57c2e6c891855746418036bdcec51a13ca62752e:create

alter table ${demo}.eba_cust_notes
    add
        foreign key ( contact_id )
            references ${demo}.eba_cust_contacts ( id )
                on delete cascade
        enable;

