-- liquibase formatted sql
-- changeset DEMO:1793805254079 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_users_acc_level_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_users_acc_level_fk.sql:null:5616b4a4b91d131473a01472b516638713cfe372:create

alter table ${demo}.eba_cust_users
    add constraint eba_cust_users_acc_level_fk
        foreign key ( access_level_id )
            references ${demo}.eba_cust_access_levels ( id )
        enable;

