-- liquibase formatted sql
-- changeset DEMO:1793805472022 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_sales_channel.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_sales_channel.sql:null:f4a03fb6baecf276a3cd9f8aba967acded879f7a:create

create table ${demo}.eba_cust_sales_channel (
    id          number not null enable,
    channel     varchar2(60 byte) not null enable,
    description varchar2(4000 byte),
    created     timestamp(6) with time zone not null enable,
    created_by  varchar2(255 byte) not null enable,
    updated     timestamp(6) with time zone,
    updated_by  varchar2(255 byte)
);

-- changeset DEMO:1793805472045 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_sales_channel.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_sales_channel.sql:null:7a67bc102cdf0814baf79865bb4e4cd21298b9cf:create

create unique index ${demo}.eba_cust_sales_channel_uk on
    ${demo}.eba_cust_sales_channel (
        channel
    );

-- changeset DEMO:1793805472061 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_sales_channel.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_sales_channel.sql:null:54ad75fee29b424879f9f116bccd4253a0604f8e:create

alter table ${demo}.eba_cust_sales_channel
    add constraint eba_cust_sales_channel_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805472089 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_sales_channel.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_sales_channel.sql:null:8a8bf1260416d136b8fa8f254264924ebc559e0b:create

alter table ${demo}.eba_cust_sales_channel
    add constraint eba_cust_sales_channel_uk
        unique ( channel )
            using index ${demo}.eba_cust_sales_channel_uk enable;

