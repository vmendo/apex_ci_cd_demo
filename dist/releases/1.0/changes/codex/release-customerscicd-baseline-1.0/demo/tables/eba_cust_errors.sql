-- liquibase formatted sql
-- changeset DEMO:1793805258203 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_errors.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_errors.sql:null:b9c3791e1148f133cb3f2467b8a4d863fee33fd0:create

create table ${demo}.eba_cust_errors (
    id              number not null enable,
    err_time        timestamp(6) with time zone default current_timestamp not null enable,
    app_id          number,
    app_page_id     number,
    app_user        varchar2(512 byte),
    user_agent      varchar2(4000 byte),
    ip_address      varchar2(512 byte),
    ip_address2     varchar2(512 byte),
    message         varchar2(4000 byte),
    page_item_name  varchar2(255 byte),
    region_id       number,
    column_alias    varchar2(255 byte),
    row_num         number,
    apex_error_code varchar2(255 byte),
    ora_sqlcode     number,
    ora_sqlerrm     varchar2(4000 byte),
    error_backtrace varchar2(4000 byte)
);

-- changeset DEMO:1793805258219 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_errors.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_errors.sql:null:499b11adf68fbf83bb1a44c3e8bf0facb4965f47:create

alter table ${demo}.eba_cust_errors
    add constraint eba_cust_errors_pk primary key ( id )
        using index enable;

