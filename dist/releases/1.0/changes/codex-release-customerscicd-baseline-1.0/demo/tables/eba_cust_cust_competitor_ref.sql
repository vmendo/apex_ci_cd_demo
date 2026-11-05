-- liquibase formatted sql
-- changeset DEMO:1793874437658 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_cust_competitor_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_cust_competitor_ref.sql:null:8cab9bff6876e992d8579954b2e443cf44c2dfb1:create

create table ${demo}.eba_cust_cust_competitor_ref (
    id            number not null enable,
    customer_id   number not null enable,
    competitor_id number not null enable,
    created       timestamp(6) with time zone not null enable,
    created_by    varchar2(255 byte) not null enable,
    updated       timestamp(6) with time zone,
    updated_by    varchar2(255 byte)
);

-- changeset DEMO:1793874437680 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_cust_competitor_ref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_cust_competitor_ref.sql:null:c6629e4faadb114038e035be430fffce64cfa176:create

alter table ${demo}.eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_pk primary key ( id )
        using index enable;

