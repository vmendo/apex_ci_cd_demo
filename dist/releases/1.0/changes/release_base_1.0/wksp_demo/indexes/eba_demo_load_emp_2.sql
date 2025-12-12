-- liquibase formatted sql
-- changeset WKSP_DEMO:1765533198161 stripComments:false  logicalFilePath:release_base_1.0/wksp_demo/indexes/eba_demo_load_emp_2.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/eba_demo_load_emp_2.sql:null:cb9c69f7146ed60730ac1f7fb9bbffc553866283:create

create index eba_demo_load_emp_2 on
    eba_demo_load_emp (
        deptno
    );

