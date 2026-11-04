-- liquibase formatted sql
-- changeset DEMO:1793805471983 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_product_uses.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_product_uses.sql:null:f845c03f70380a627a1ee468c13b1e3857f4deb8:create

create table ${demo}.eba_cust_product_uses (
    id                  number not null enable,
    row_version_number  number not null enable,
    customer_id         number not null enable,
    product_id          number not null enable,
    reference_type_ids  varchar2(4000 byte),
    internal_contact    varchar2(255 byte),
    customer_contact_id number,
    reference_status_id number,
    valid_from          timestamp(6) with time zone,
    valid_to            timestamp(6) with time zone,
    comments            varchar2(4000 byte),
    created             timestamp(6) with time zone not null enable,
    created_by          varchar2(255 byte) not null enable,
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255 byte)
);

-- changeset DEMO:1793805472013 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_product_uses.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_product_uses.sql:null:c88818f9582ccd56e36afe1ff87f47433cac40b0:create

alter table ${demo}.eba_cust_product_uses
    add constraint eba_cust_product_uses_pk primary key ( id )
        using index enable;

