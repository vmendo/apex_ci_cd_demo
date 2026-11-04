-- liquibase formatted sql
-- changeset DEMO:1793805258130 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_cust_partner_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_cust_partner_ref.sql:null:f0693b4cefd656733e12f968aaddcbf08d394408:create

create table ${demo}.eba_cust_cust_partner_ref (
    id          number not null enable,
    customer_id number not null enable,
    partner_id  number not null enable,
    created     timestamp(6) with time zone not null enable,
    created_by  varchar2(255 byte) not null enable,
    updated     timestamp(6) with time zone,
    updated_by  varchar2(255 byte)
);

-- changeset DEMO:1793805258154 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_cust_partner_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_cust_partner_ref.sql:null:5b4a0494ffad58b0e9fd895a4b803fcda265362a:create

alter table ${demo}.eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_pk primary key ( id )
        using index enable;

