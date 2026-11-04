-- liquibase formatted sql
-- changeset DEMO:1793805254030 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_links_contact_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_links_contact_fk.sql:null:59159f6c28d03f1bec798b1bbb60b40bb2ba1579:create

alter table ${demo}.eba_cust_links
    add constraint eba_cust_links_contact_fk
        foreign key ( contact_id )
            references ${demo}.eba_cust_contacts ( id )
                on delete cascade
        enable;

