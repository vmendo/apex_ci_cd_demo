-- liquibase formatted sql
-- changeset DEMO:1793874437621 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_contact_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_contact_types.sql:null:6c2186b1819907a9f35252524dfed70a48522e35:create

create table ${demo}.eba_cust_contact_types (
    id                 number not null enable,
    row_version_number number,
    contact_type       varchar2(60 byte) not null enable,
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793874437632 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_contact_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_contact_types.sql:null:e227b59834916dbddf12cd206432957dd9471215:create

create unique index ${demo}.eba_cust_contact_types_uk on
    ${demo}.eba_cust_contact_types (
        contact_type
    );

-- changeset DEMO:1793874437662 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_contact_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_contact_types.sql:null:741dddd9e66fd8cacfea17ba78a9a6764a9c971c:create

alter table ${demo}.eba_cust_contact_types
    add constraint eba_cust_contact_types_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793874437674 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_contact_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_contact_types.sql:null:578bcf98f7744460d4e7c47adfaeb122f4d67a64:create

alter table ${demo}.eba_cust_contact_types
    add constraint eba_cust_contact_types_uk
        unique ( contact_type )
            using index ${demo}.eba_cust_contact_types_uk enable;

