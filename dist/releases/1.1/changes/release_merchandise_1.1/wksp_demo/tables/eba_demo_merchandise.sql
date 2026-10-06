-- liquibase formatted sql
-- changeset WKSP_DEMO:1791296774425 stripComments:false  logicalFilePath:release_merchandise_1.1/wksp_demo/tables/eba_demo_merchandise.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/eba_demo_merchandise.sql:null:fa7c161b19f2bcd0b6d158f6d6d0e849e343ca10:create

create table eba_demo_merchandise (
    id          number generated always as identity minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 cache 20 noorder nocycle
    nokeep noscale not null enable,
    name        varchar2(50 byte),
    description varchar2(200 byte)
);

alter table eba_demo_merchandise
    add constraint eba_demo_merchandise_pk primary key ( id )
        using index enable;

