-- liquibase formatted sql
-- changeset DEMO:1793805471794 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_history.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_history.sql:null:03b89c7504030b1e2fcbd26d1258dc43aae2d73e:create

create table ${demo}.eba_cust_history (
    id                 number,
    row_version_number number,
    table_name         varchar2(255 byte),
    component_id       number,
    component_rowkey   varchar2(30 byte),
    column_name        varchar2(60 byte) not null enable,
    old_value          varchar2(4000 byte),
    new_value          varchar2(4000 byte),
    change_date        timestamp(6) with time zone,
    changed_by         varchar2(255 byte)
);

-- changeset DEMO:1793805471831 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_history.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_history.sql:null:cbe5aaed21097f9f9690886c539321017a914c70:create

alter table ${demo}.eba_cust_history
    add constraint eba_cust_history_pk primary key ( id )
        using index enable;

