-- liquibase formatted sql
-- changeset DEMO:1793874433295 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_activities_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_activities_fk.sql:null:d6222cf67e234cdf2545e62118debda8f29c5e20:create

alter table ${demo}.eba_cust_activities
    add constraint eba_cust_activities_fk
        foreign key ( type_id )
            references ${demo}.eba_cust_activity_types ( id )
        enable;

