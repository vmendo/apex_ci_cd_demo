-- liquibase formatted sql
-- changeset WKSP_DEMO:1783688247921 stripComments:false  logicalFilePath:release_merchandise_1.1/wksp_demo/tables/eba_demo_load_emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/eba_demo_load_emp.sql:63b3c5fad72ac1b98057401654cc33470f85ddef:68b036b3dad2407594629b8518e232864ee1e87a:alter

alter table eba_demo_load_emp add (
    merchandise_allowed char(1) default 'F' not null enable
)
/

