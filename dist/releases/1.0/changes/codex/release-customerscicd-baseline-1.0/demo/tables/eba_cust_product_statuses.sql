-- liquibase formatted sql
-- changeset DEMO:1793805258319 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_product_statuses.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_product_statuses.sql:null:50c7d56f34a6dc0f830186be5e749e10f1267fa2:create

create table ${demo}.eba_cust_product_statuses (
    id            number not null enable,
    status        varchar2(255 byte),
    description   varchar2(512 byte),
    is_current_yn varchar2(1 byte),
    created       timestamp(6) with time zone not null enable,
    created_by    varchar2(255 byte) not null enable,
    updated       timestamp(6) with time zone,
    updated_by    varchar2(255 byte)
);

-- changeset DEMO:1793805258354 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_product_statuses.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_product_statuses.sql:null:03ae43a5149f6a1602c78dfb87acf7a069e4ea6f:create

alter table ${demo}.eba_cust_product_statuses
    add constraint eba_cust_product_statuses_pk primary key ( id )
        using index enable;

