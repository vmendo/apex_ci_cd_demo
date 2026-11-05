-- liquibase formatted sql
-- changeset DEMO:1793874432477 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_errors_i1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_errors_i1.sql:null:0bef62b8827ac303ad1c01fbf22d58754189bd14:create

create index ${demo}.eba_cust_errors_i1 on
    ${demo}.eba_cust_errors ( sys_extract_utc(err_time) );

