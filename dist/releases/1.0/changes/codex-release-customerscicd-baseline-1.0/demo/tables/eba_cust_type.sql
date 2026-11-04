-- liquibase formatted sql
-- changeset DEMO:1793805472110 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_type.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_type.sql:null:97bc18863fe89161375ed3347297b9503d7be444:create

create table ${demo}.eba_cust_type (
    id                 number not null enable,
    row_version_number number,
    type               varchar2(60 byte) not null enable,
    description        varchar2(4000 byte),
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805472129 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_type.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_type.sql:null:8b8c4c9fdaeb1c03de98e48c49e9f38273b13c79:create

create unique index ${demo}.eba_cust_type_uk on
    ${demo}.eba_cust_type (
        type
    );

-- changeset DEMO:1793805472151 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_type.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_type.sql:null:a075f8bbe3f3dbad60888a751811692439d87c72:create

alter table ${demo}.eba_cust_type
    add constraint eba_cust_type_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805472168 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_type.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_type.sql:null:4e99c06d85d9e6e5bf47935b6d42b6beb96b0119:create

alter table ${demo}.eba_cust_type
    add constraint eba_cust_type_uk
        unique ( type )
            using index ${demo}.eba_cust_type_uk enable;

