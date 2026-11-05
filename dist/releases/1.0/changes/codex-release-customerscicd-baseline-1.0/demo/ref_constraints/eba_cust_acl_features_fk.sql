-- liquibase formatted sql
-- changeset DEMO:1793874433302 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_acl_features_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_acl_features_fk.sql:null:aeec6b6ba553778c22d0105778c74c4010c1bd2f:create

alter table ${demo}.eba_cust_acl_features
    add constraint eba_cust_acl_features_fk
        foreign key ( access_level_id )
            references ${demo}.eba_cust_access_levels ( id )
        enable;

