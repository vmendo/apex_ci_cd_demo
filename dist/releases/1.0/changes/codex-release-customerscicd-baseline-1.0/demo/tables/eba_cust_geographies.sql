-- liquibase formatted sql
-- changeset DEMO:1793805471801 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_geographies.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_geographies.sql:null:a06014a5ba965a3d1ebd6a9a6ab852fdf1001241:create

create table ${demo}.eba_cust_geographies (
    id                 number not null enable,
    row_version_number number not null enable,
    geography_name     varchar2(255 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805471827 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_geographies.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_geographies.sql:null:75b0de973032b0e7db7eeb04916c8c21f8aca02e:create

create unique index ${demo}.eba_cust_geographies_uk on
    ${demo}.eba_cust_geographies (
        geography_name
    );

-- changeset DEMO:1793805471850 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_geographies.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_geographies.sql:null:663622cac2f93b7d69d6f6885ba538e6f00dd52d:create

alter table ${demo}.eba_cust_geographies
    add constraint eba_cust_geographies_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805471856 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_geographies.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_geographies.sql:null:e682f74c992ebe3ecbdefe20509c8339397e678d:create

alter table ${demo}.eba_cust_geographies
    add constraint eba_cust_geographies_uk
        unique ( geography_name )
            using index ${demo}.eba_cust_geographies_uk enable;

