-- liquibase formatted sql
-- changeset WKSP_DEMO:1765473303222 stripComments:false  logicalFilePath:release_merchandise_1.1/wksp_demo/tables/eba_demo_load_emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/eba_demo_load_emp.sql:63b3c5fad72ac1b98057401654cc33470f85ddef:05e0277378b62509fd5afb91301fe0973863e107:alter

alter table eba_demo_load_emp add (
    merchandise_allowed char(1 byte) default 'F' not null enable
);

