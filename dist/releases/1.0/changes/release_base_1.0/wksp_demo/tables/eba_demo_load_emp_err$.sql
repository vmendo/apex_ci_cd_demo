-- liquibase formatted sql
-- changeset WKSP_DEMO:1765814670257 stripComments:false  logicalFilePath:release_base_1.0/wksp_demo/tables/eba_demo_load_emp_err$.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/eba_demo_load_emp_err$.sql:null:310bd615c6ace1f748002227185c7cfbfff528ac:create

create table eba_demo_load_emp_err$ (
    ora_err_number$ number,
    ora_err_mesg$   varchar2(2000 byte),
    ora_err_rowid$  urowid(4000),
    ora_err_optyp$  varchar2(2 byte),
    ora_err_tag$    varchar2(2000 byte),
    empno           varchar2(4000 byte),
    ename           varchar2(32767 byte),
    job             varchar2(32767 byte),
    mgr             varchar2(4000 byte),
    hiredate        varchar2(4000 byte),
    sal             varchar2(4000 byte),
    comm            varchar2(4000 byte),
    deptno          varchar2(4000 byte),
    created         varchar2(4000 byte),
    last_updated    varchar2(4000 byte)
);

