-- liquibase formatted sql
-- changeset WKSP_DEMO:1784039085635 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/eba_demo_load_emp.eba_demo_load_emp.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/eba_demo_load_emp.eba_demo_load_emp.sql:null:9e86de3102cd38e1aec9bec94b2ba924f91d7534:create

alter table eba_demo_load_emp
    add
        foreign key ( mgr )
            references eba_demo_load_emp ( empno )
        enable;

