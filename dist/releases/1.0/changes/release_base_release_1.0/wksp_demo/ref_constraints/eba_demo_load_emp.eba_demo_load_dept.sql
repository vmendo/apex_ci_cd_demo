-- liquibase formatted sql
-- changeset WKSP_DEMO:1783682143287 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/eba_demo_load_emp.eba_demo_load_dept.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/eba_demo_load_emp.eba_demo_load_dept.sql:null:33c9711c7c058fdd36d2541eb0e8a9bccaa6f346:create

alter table eba_demo_load_emp
    add
        foreign key ( deptno )
            references eba_demo_load_dept ( deptno )
        enable;

