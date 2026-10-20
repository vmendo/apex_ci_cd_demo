-- liquibase formatted sql
-- changeset WKSP_DEMO:1792485122404 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/tables/eba_demo_load_emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/eba_demo_load_emp.sql:null:d8ffe67c643966e987f599a2172128ceb0121590:create

create table eba_demo_load_emp (
    empno        number(4, 0) not null enable,
    ename        varchar2(10 byte),
    job          varchar2(10 byte),
    mgr          number(4, 0),
    hiredate     date,
    sal          number(7, 2),
    comm         number(7, 2),
    deptno       number(2, 0),
    created      date,
    last_updated date
);

alter table eba_demo_load_emp add primary key ( empno )
    using index enable;

