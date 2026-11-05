-- liquibase formatted sql
-- changeset DEMO:1793874437521 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_activity_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_activity_ref.sql:null:f9e879017b27bc3294d30c2b8448af53af063a61:create

create table ${demo}.eba_cust_activity_ref (
    id                 number not null enable,
    activity_id        number not null enable,
    customer_id        number not null enable,
    contact_id         number,
    activity_date      date,
    owner              varchar2(255 byte),
    location           varchar2(4000 byte),
    notes              varchar2(4000 byte),
    row_version_number number default 1 not null enable,
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793874437578 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_activity_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_activity_ref.sql:null:c4d8f7aa649ad6fc827eb27e45925f07ae28d0df:create

alter table ${demo}.eba_cust_activity_ref
    add constraint eba_cust_activity_ref_pk primary key ( id )
        using index enable;

