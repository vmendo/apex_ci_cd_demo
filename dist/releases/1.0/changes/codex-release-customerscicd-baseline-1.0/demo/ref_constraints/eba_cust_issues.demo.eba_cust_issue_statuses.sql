-- liquibase formatted sql
-- changeset DEMO:1793805467944 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_issues.demo.eba_cust_issue_statuses.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_issues.demo.eba_cust_issue_statuses.sql:null:38a94e2fe8b89c30cf91d241b7e826f9e8db2170:create

alter table ${demo}.eba_cust_issues
    add
        foreign key ( status_id )
            references ${demo}.eba_cust_issue_statuses ( id )
                on delete cascade
        enable;

