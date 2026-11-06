-- liquibase formatted sql
-- changeset DEMO:1793967273201 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_departments.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_departments.sql:null:aacb6dbdc44f79ca885e2b279c92fd2f6e0c7371:create

create table ${demo}.demo_trn_departments (
    id              number default ${demo}.demo_trn_departments_seq.nextval,
    department_name varchar2(100 byte)
        constraint demo_trn_departments_department_name_nn not null enable,
    cost_center     varchar2(20 byte)
        constraint demo_trn_departments_cost_center_nn not null enable
);

-- changeset DEMO:1793967273262 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_departments.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_departments.sql:null:532543783e74f64d513a58d9a5731d8cce54f2d1:create

alter table ${demo}.demo_trn_departments
    add constraint demo_trn_departments_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793967273317 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_departments.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_departments.sql:null:fee99295c7d0371cb6a9c61e004fc03a3c4d4999:create

alter table ${demo}.demo_trn_departments add constraint demo_trn_departments_uq1 unique ( department_name )
    using index enable;

-- changeset DEMO:1793967273351 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_departments.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_departments.sql:null:25d583fac2ce5a71226d155c25f1f0f8b2a4a603:create

alter table ${demo}.demo_trn_departments add constraint demo_trn_departments_uq2 unique ( cost_center )
    using index enable;

