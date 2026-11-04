-- liquibase formatted sql
-- changeset DEMO:1793805472042 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_tags.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tags.sql:null:4ef25f6930fe685f5c9dab90fcf74bf22fbed603:create

create table ${demo}.eba_cust_tags (
    tag_id       number not null enable,
    tag          varchar2(255 byte) not null enable,
    content_id   number,
    content_type varchar2(30 byte),
    created      timestamp(6) with time zone not null enable,
    created_by   varchar2(255 byte) not null enable,
    updated      timestamp(6) with time zone,
    updated_by   varchar2(255 byte)
);

-- changeset DEMO:1793805472064 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_tags.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tags.sql:null:0e4dd144d4b4cc7d60571450c091be3930eaafe2:create

alter table ${demo}.eba_cust_tags
    add constraint eba_cust_tags_ck
        check ( content_type in ( 'CUSTOMER', 'CONTACT', 'PRODUCT', 'FILE' ) ) enable;

-- changeset DEMO:1793805472085 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_tags.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tags.sql:null:7ebb817ef9adc2f9b3ca56a4ee66f6439f9544d9:create

alter table ${demo}.eba_cust_tags
    add constraint eba_cust_tags_pk primary key ( tag_id )
        using index enable;

