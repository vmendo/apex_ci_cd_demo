-- liquibase formatted sql
-- changeset WKSP_DEMO:1783682465504 stripComments:false  logicalFilePath:release_merchandise_1.1/wksp_demo/tables/eba_demo_merchandise.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/eba_demo_merchandise.sql:null:06150091b5145bd5ecbc8bbb5c5e9d4b23fdd80e:create

create table eba_demo_merchandise (
    id          number generated always as identity not null enable,
    name        varchar2(50 byte),
    description varchar2(200 byte)
);

alter table eba_demo_merchandise
    add constraint eba_demo_merchandise_pk primary key ( id )
        using index enable;

