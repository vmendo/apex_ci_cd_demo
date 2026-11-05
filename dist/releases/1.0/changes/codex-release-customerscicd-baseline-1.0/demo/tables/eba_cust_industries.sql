-- liquibase formatted sql
-- changeset DEMO:1793874437812 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_industries.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_industries.sql:null:2447c7a6f83adf8825fd945371055a5ba3e08c13:create

create table ${demo}.eba_cust_industries (
    id                 number not null enable,
    row_version_number number,
    industry_name      varchar2(255 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793874437822 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_industries.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_industries.sql:null:b1189bb66ae86f19005dc8c49d45ac3fff113693:create

create unique index ${demo}.eba_cust_industries_uk on
    ${demo}.eba_cust_industries (
        industry_name
    );

-- changeset DEMO:1793874437860 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_industries.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_industries.sql:null:2be081b4309a8e2767162a44c7de0032fef7aee1:create

alter table ${demo}.eba_cust_industries
    add constraint eba_cust_industries_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793874437867 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_industries.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_industries.sql:null:2490110186a66a7131b525e356a6c8b3b13f7934:create

alter table ${demo}.eba_cust_industries
    add constraint eba_cust_industries_uk
        unique ( industry_name )
            using index ${demo}.eba_cust_industries_uk enable;

