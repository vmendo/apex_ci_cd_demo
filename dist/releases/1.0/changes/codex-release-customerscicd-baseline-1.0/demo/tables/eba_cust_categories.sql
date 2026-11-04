-- liquibase formatted sql
-- changeset DEMO:1793805468119 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_categories.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_categories.sql:null:407d428d06c021453329bad609bf4a1a3b2d12bb:create

create table ${demo}.eba_cust_categories (
    id                 number not null enable,
    row_version_number number,
    category           varchar2(60 byte) not null enable,
    description        varchar2(255 byte),
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805468155 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_categories.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_categories.sql:null:857c7ce0069d45f690c695dc50ca18b576b9fb30:create

create unique index ${demo}.eba_cust_categories_uk on
    ${demo}.eba_cust_categories (
        category
    );

-- changeset DEMO:1793805468183 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_categories.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_categories.sql:null:065672f694f5da7522892d9774f0612158438c3c:create

alter table ${demo}.eba_cust_categories
    add constraint eba_cust_categories_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805468200 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_categories.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_categories.sql:null:0640ace53d9d07afb492613e5b4fe7366af30cb0:create

alter table ${demo}.eba_cust_categories
    add constraint eba_cust_categories_uk
        unique ( category )
            using index ${demo}.eba_cust_categories_uk enable;

