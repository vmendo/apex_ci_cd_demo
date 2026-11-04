-- liquibase formatted sql
-- changeset DEMO:1793805468085 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_activity_files.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_activity_files.sql:null:a0ddbb2b408b855fec9e13e0c7caf74ce68f47f1:create

create table ${demo}.eba_cust_activity_files (
    id                 number not null enable,
    row_version_number number not null enable,
    activity_id        number not null enable,
    file_name          varchar2(512 byte),
    file_mimetype      varchar2(512 byte),
    file_charset       varchar2(512 byte),
    file_last_update   date,
    file_blob          blob,
    file_comments      varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805468113 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_activity_files.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_activity_files.sql:null:d74b9f07b17e00f425d39037c076d6ecc762d750:create

alter table ${demo}.eba_cust_activity_files
    add constraint eba_cust_activity_files_pk primary key ( id )
        using index enable;

