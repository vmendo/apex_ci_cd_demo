-- liquibase formatted sql
-- changeset DEMO:1793805253916 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_activity_files_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_activity_files_fk.sql:null:c5ac40de4ba4954d8dc97be7c6b2fa390a3be7d0:create

alter table ${demo}.eba_cust_activity_files
    add constraint eba_cust_activity_files_fk
        foreign key ( activity_id )
            references ${demo}.eba_cust_activities ( id )
                on delete cascade
        enable;

