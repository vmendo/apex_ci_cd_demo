-- liquibase formatted sql
-- changeset DEMO:1793805258250 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_impl_partners.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_impl_partners.sql:null:28b43bd2bf1f73e99fe024f2bec0b3ad9ce91f07:create

create table ${demo}.eba_cust_impl_partners (
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

-- changeset DEMO:1793805258275 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_impl_partners.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_impl_partners.sql:null:4ad94d2b77bba20be3dbf67c8f7a977057326c27:create

alter table ${demo}.eba_cust_impl_partners
    add constraint eba_cust_impl_partners_pk primary key ( id )
        using index enable;

