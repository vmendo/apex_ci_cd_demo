-- liquibase formatted sql
-- changeset DEMO:1793805467310 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_email_log_n2.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_email_log_n2.sql:null:b67c92701a468963fc70c412e99644e4422fd8f8:create

create index ${demo}.eba_cust_email_log_n2 on
    ${demo}.eba_cust_email_log (
        email_from
    );

