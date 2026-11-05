-- liquibase formatted sql
-- changeset DEMO:1793874437563 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_clicks.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_clicks.sql:null:dbbf7fd3fe9055cc19db68740d66c06cfd18bdec:create

create table ${demo}.eba_cust_clicks (
    id             number,
    cust_id        number,
    app_username   varchar2(255 byte),
    view_timestamp timestamp(6) with time zone,
    app_session    varchar2(255 byte)
);

-- changeset DEMO:1793874437598 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_clicks.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_clicks.sql:null:14d2d34ffa93cf4eb1a0c073fc556185e1906901:create

alter table ${demo}.eba_cust_clicks add primary key ( id )
    using index enable;

