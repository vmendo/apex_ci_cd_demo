-- liquibase formatted sql
-- changeset DEMO:1793805467933 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_feedback_type_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_feedback_type_fk.sql:null:3751a475b57669718b293572b3aafb70c9acbe99:create

alter table ${demo}.eba_cust_feedback
    add constraint eba_cust_feedback_type_fk
        foreign key ( type_id )
            references ${demo}.eba_cust_feedback_types ( id )
        enable;

