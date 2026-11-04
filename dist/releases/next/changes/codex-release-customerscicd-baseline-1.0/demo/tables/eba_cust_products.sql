-- liquibase formatted sql
-- changeset DEMO:1793805472007 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_products.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_products.sql:null:4e727373d8cfe73fa120a69ea5c5e159818526c8:create

create table ${demo}.eba_cust_products (
    id                     number not null enable,
    row_version_number     number,
    product_family_id      number,
    product_name           varchar2(255 byte) not null enable,
    description            varchar2(4000 byte),
    tags                   varchar2(4000 byte),
    is_active              varchar2(1 byte) default 'Y',
    price_list_part_number varchar2(255 byte),
    created                timestamp(6) with time zone not null enable,
    created_by             varchar2(255 byte) not null enable,
    updated                timestamp(6) with time zone,
    updated_by             varchar2(255 byte)
);

-- changeset DEMO:1793805472017 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_products.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_products.sql:null:a92c73e834d46c84f0e26b0181a42b716640bb74:create

create unique index ${demo}.eba_cust_products_uk on
    ${demo}.eba_cust_products (
        product_name
    );

-- changeset DEMO:1793805472048 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_products.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_products.sql:null:4d621355be1dd1ce1dafd5c8c4affd27e03fa41f:create

alter table ${demo}.eba_cust_products
    add constraint eba_cust_products_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805472057 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_products.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_products.sql:null:466ec10e79dcd5d3d755e1f6168d33ced43b2705:create

alter table ${demo}.eba_cust_products
    add constraint eba_cust_products_uk
        unique ( product_name )
            using index ${demo}.eba_cust_products_uk enable;

