-- liquibase formatted sql
-- changeset DEMO:1793874437594 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_competitors.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_competitors.sql:null:64b40f291d7be61a83897d7d53f14143e9ceff02:create

create table ${demo}.eba_cust_competitors (
    id                 number not null enable,
    row_version_number number,
    name               varchar2(250 byte) not null enable,
    description        varchar2(4000 byte),
    website            varchar2(512 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793874437610 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_competitors.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_competitors.sql:null:824ff9984ac7a06a35ec17d62a7a8d57a2510800:create

alter table ${demo}.eba_cust_competitors
    add constraint eba_cust_competitors_pk primary key ( id )
        using index enable;

