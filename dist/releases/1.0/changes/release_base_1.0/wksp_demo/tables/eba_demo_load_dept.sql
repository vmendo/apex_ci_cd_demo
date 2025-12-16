-- liquibase formatted sql
-- changeset WKSP_DEMO:1765883239067 stripComments:false  logicalFilePath:release_base_1.0/wksp_demo/tables/eba_demo_load_dept.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/eba_demo_load_dept.sql:null:2c3b91bc404af9b0163c05a6e7d029ebfe69d422:create

create table eba_demo_load_dept (
    deptno number(2, 0),
    dname  varchar2(14 byte),
    loc    varchar2(13 byte)
);

alter table eba_demo_load_dept add primary key ( deptno )
    using index enable;

