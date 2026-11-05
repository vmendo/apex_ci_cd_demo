-- liquibase formatted sql
-- changeset DEMO:1793874438057 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_views_log.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_views_log.sql:null:92bafdb4ff0c70fca4fe87347af7a9f902a14ad1:create

create table ${demo}.eba_cust_views_log (
    id                 number not null enable,
    row_version_number number,
    table_primary_id   number,
    view_type          varchar2(10 byte),
    view_count         number default 1,
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793874438086 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_views_log.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_views_log.sql:null:e3334cbbf471b4cc8fbe1fda4a7ef80747faa8bb:create

alter table ${demo}.eba_cust_views_log
    add constraint eba_cust_views_log_pk primary key ( id )
        using index enable;

