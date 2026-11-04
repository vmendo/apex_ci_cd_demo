-- liquibase formatted sql
-- changeset DEMO:1793805253344 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/package_specs/eba_cust_email.sql
-- sqlcl_snapshot src/database/demo/package_specs/eba_cust_email.sql:null:97e290bdd6fab11444ef6380b91fd0efe4c71663:create

create or replace package ${demo}.eba_cust_email as
    procedure send_feedback_email (
        p_app_id        in number,
        p_page_id       in number,
        p_submitter     in varchar2,
        p_feedback_type in varchar2,
        p_feedback      in varchar2
    );

end eba_cust_email;
/

