-- liquibase formatted sql
-- changeset DEMO:1793805253964 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_activity_ref_fk3.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_activity_ref_fk3.sql:null:c27770cf5a1249775528271d6b3ea3de42ad7a15:create

alter table ${demo}.eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk3
        foreign key ( contact_id )
            references ${demo}.eba_cust_contacts ( id )
                on delete set null
        enable;

