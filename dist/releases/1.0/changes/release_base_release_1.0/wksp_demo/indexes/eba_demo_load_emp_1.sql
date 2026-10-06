-- liquibase formatted sql
-- changeset WKSP_DEMO:1791287448199 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/eba_demo_load_emp_1.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/eba_demo_load_emp_1.sql:null:7fab380cbab8d024d452cbaa6d8652404162ac7e:create

create index eba_demo_load_emp_1 on
    eba_demo_load_emp (
        mgr
    );

