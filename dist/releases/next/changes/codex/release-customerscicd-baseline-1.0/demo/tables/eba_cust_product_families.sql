-- liquibase formatted sql
-- changeset DEMO:1793805258327 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_product_families.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_product_families.sql:null:10c6fdd180724880dc683d5561713c63aa4d085a:create

create table ${demo}.eba_cust_product_families (
    id                 number not null enable,
    row_version_number number,
    name               varchar2(60 byte) not null enable,
    description        varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805258351 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_product_families.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_product_families.sql:null:af7666452143a70f79d25cd105747ddbdb8735c1:create

alter table ${demo}.eba_cust_product_families
    add constraint eba_cust_prod_families_pk primary key ( id )
        using index enable;

