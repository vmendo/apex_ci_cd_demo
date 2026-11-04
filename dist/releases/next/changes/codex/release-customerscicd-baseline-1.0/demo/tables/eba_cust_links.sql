-- liquibase formatted sql
-- changeset DEMO:1793805258264 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_links.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_links.sql:null:a52f941cb78d25cedc76c0adb0f7178c9f3ce25f:create

create table ${demo}.eba_cust_links (
    id                 number not null enable,
    row_version_number number,
    customer_id        number not null enable,
    contact_id         number,
    link               varchar2(4000 byte) not null enable,
    link_desc          varchar2(255 byte),
    link_type          varchar2(10 byte),
    link_comments      varchar2(4000 byte),
    tags               varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805258296 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_links.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_links.sql:null:b036b22039a1775de7810515e46e922c120e4069:create

alter table ${demo}.eba_cust_links
    add constraint eba_cust_links_pk primary key ( id )
        using index enable;

