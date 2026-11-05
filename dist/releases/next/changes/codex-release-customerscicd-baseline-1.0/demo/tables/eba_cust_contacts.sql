-- liquibase formatted sql
-- changeset DEMO:1793874437644 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_contacts.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_contacts.sql:null:20d6c7844b74cbdd0f3b223f3e10d9cf7562cb4d:create

create table ${demo}.eba_cust_contacts (
    id                 number not null enable,
    row_version_number number,
    customer_id        number not null enable,
    name               varchar2(255 byte) not null enable,
    title              varchar2(100 byte),
    company            varchar2(100 byte),
    address_line1      varchar2(255 byte),
    address_line2      varchar2(255 byte),
    city               varchar2(100 byte),
    state              varchar2(100 byte),
    country            varchar2(100 byte),
    zip                varchar2(30 byte),
    email              varchar2(250 byte),
    phone              varchar2(100 byte),
    cell_phone         varchar2(100 byte),
    fax                varchar2(100 byte),
    contact_type_id    number,
    notes              varchar2(4000 byte),
    facebook           varchar2(4000 byte),
    linkedin           varchar2(4000 byte),
    twitter            varchar2(4000 byte),
    tags               varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793874437652 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_contacts.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_contacts.sql:null:1764806e75484b44512fd5b6c0e2e2121e65468f:create

alter table ${demo}.eba_cust_contacts
    add constraint eba_cust_contacts_pk primary key ( id )
        using index enable;

