-- liquibase formatted sql
-- changeset DEMO:1793805468066 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_activity_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_activity_types.sql:null:9562541959877e8875bcb3f9fa1f8f074e58b51f:create

create table ${demo}.eba_cust_activity_types (
    id                 number not null enable,
    row_version_number number not null enable,
    name               varchar2(255 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805468098 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_activity_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_activity_types.sql:null:dee55485c81aa00a2426ddc3481d9efe45a78036:create

alter table ${demo}.eba_cust_activity_types
    add constraint eba_cust_activity_types_pk primary key ( id )
        using index enable;

