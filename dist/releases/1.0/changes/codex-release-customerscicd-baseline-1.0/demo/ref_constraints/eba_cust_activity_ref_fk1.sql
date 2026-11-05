-- liquibase formatted sql
-- changeset DEMO:1793874433283 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_activity_ref_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_activity_ref_fk1.sql:null:26b64c7e8e5ded1450bac79074486c8905104b54:create

alter table ${demo}.eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk1
        foreign key ( activity_id )
            references ${demo}.eba_cust_activities ( id )
                on delete cascade
        enable;

