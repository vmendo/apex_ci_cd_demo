-- liquibase formatted sql
-- changeset DEMO:1793874432450 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_email_log_n1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_email_log_n1.sql:null:8e60b26f34493998449aad4340944b7f28d0d091:create

create index ${demo}.eba_cust_email_log_n1 on
    ${demo}.eba_cust_email_log (
        email_first_to
    );

