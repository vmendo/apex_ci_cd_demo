-- liquibase formatted sql
-- changeset DEMO:1793805471921 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_issues.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_issues.sql:null:3bb246626728adeff6ebfd0176c38f5ac59baaf6:create

create table ${demo}.eba_cust_issues (
    id          number,
    customer_id number not null enable,
    name        varchar2(255 byte) not null enable,
    issue_type  varchar2(10 byte) not null enable,
    status_id   number not null enable,
    product_id  number,
    details     varchar2(4000 byte),
    resolution  varchar2(4000 byte),
    created     timestamp(6) with time zone,
    created_by  varchar2(255 byte),
    updated     timestamp(6) with time zone,
    updated_by  varchar2(255 byte)
);

-- changeset DEMO:1793805471928 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_issues.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_issues.sql:null:238419f4b99ad1c47a85af2d3b4735f349215839:create

alter table ${demo}.eba_cust_issues add primary key ( id )
    using index enable;

