-- liquibase formatted sql
-- changeset DEMO:1793805258151 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_customer_reftype_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_customer_reftype_ref.sql:null:1fb225ee3db838539c81b1d21979dbcf0c480c1b:create

create table ${demo}.eba_cust_customer_reftype_ref (
    id                number not null enable,
    customer_id       number not null enable,
    reference_type_id number not null enable,
    created           timestamp(6) with time zone not null enable,
    created_by        varchar2(255 byte) not null enable,
    updated           timestamp(6) with time zone,
    updated_by        varchar2(255 byte)
);

-- changeset DEMO:1793805258162 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_customer_reftype_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_customer_reftype_ref.sql:null:b4a4ce5d450362c57e2d69f4923e322be5e0c1e7:create

create unique index ${demo}.eba_cust_customer_reftype_uk on
    ${demo}.eba_cust_customer_reftype_ref (
        customer_id,
        reference_type_id
    );

-- changeset DEMO:1793805258206 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_customer_reftype_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_customer_reftype_ref.sql:null:60ba13f54e0cfc515892ca85cf1c762ed0091de2:create

alter table ${demo}.eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805258215 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_customer_reftype_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_customer_reftype_ref.sql:null:725ae94eb67121e81bc2379a827a65bf8934ccc8:create

alter table ${demo}.eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_uk
        unique ( customer_id,
                 reference_type_id )
            using index ${demo}.eba_cust_customer_reftype_uk enable;

