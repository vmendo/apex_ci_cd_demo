-- liquibase formatted sql
-- changeset DEMO:1793805468282 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_email_log.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_email_log.sql:null:ba46ea60aaa6ec3d097136be2972632221d20001:create

create table ${demo}.eba_cust_email_log (
    id                 number,
    row_version_number number,
    email_first_to     varchar2(255 byte),
    email_to           varchar2(4000 byte),
    email_from         varchar2(255 byte),
    body_size          number,
    customer_id        number,
    email_type         varchar2(30 byte),
    created            timestamp(6) with time zone,
    created_by         varchar2(255 byte),
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805468289 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_email_log.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_email_log.sql:null:f2c734043d1816def408d3946d255aac33bd8c17:create

alter table ${demo}.eba_cust_email_log add primary key ( id )
    using index enable;

