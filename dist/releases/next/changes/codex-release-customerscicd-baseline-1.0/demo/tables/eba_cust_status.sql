-- liquibase formatted sql
-- changeset DEMO:1793805472053 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_status.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_status.sql:null:b02be7bd746c7ed972240b2fbe3a490d966ac5ec:create

create table ${demo}.eba_cust_status (
    id                 number not null enable,
    row_version_number number,
    status             varchar2(60 byte) not null enable,
    description        varchar2(4000 byte),
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805472097 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_status.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_status.sql:null:f735a5802620ba0c187a92110809d50880e6c261:create

create unique index ${demo}.eba_cust_status_uk on
    ${demo}.eba_cust_status (
        status
    );

-- changeset DEMO:1793805472142 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_status.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_status.sql:null:29cd6dbf1a9c8068cdff77d30b04859c3098610f:create

alter table ${demo}.eba_cust_status
    add constraint eba_cust_status_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805472178 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_status.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_status.sql:null:2845158885ef8e2cd67c5052d4054beb2c60b38f:create

alter table ${demo}.eba_cust_status
    add constraint eba_cust_status_uk
        unique ( status )
            using index ${demo}.eba_cust_status_uk enable;

