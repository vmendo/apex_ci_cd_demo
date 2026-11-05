-- liquibase formatted sql
-- changeset DEMO:1793890723542 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_employees.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_employees.sql:null:671d18e017f49854826c9a365a6fb0b07cd5ec57:create

create table ${demo}.demo_trn_employees (
    id              number default ${demo}.demo_trn_employees_seq.nextval,
    department_id   number
        constraint demo_trn_employees_department_id_nn not null enable,
    employee_number varchar2(20 byte)
        constraint demo_trn_employees_employee_number_nn not null enable,
    first_name      varchar2(100 byte)
        constraint demo_trn_employees_first_name_nn not null enable,
    last_name       varchar2(100 byte)
        constraint demo_trn_employees_last_name_nn not null enable,
    email           varchar2(255 byte)
        constraint demo_trn_employees_email_nn not null enable,
    hire_date       date
        constraint demo_trn_employees_hire_date_nn not null enable,
    status          varchar2(20 byte) default 'ACTIVE'
        constraint demo_trn_employees_status_nn not null enable
);

-- changeset DEMO:1793890723573 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_employees.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_employees.sql:null:104876087f3155f94c0af9f69822caeb561c7849:create

alter table ${demo}.demo_trn_employees
    add constraint demo_trn_employees_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793890723609 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_employees.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_employees.sql:null:32ac31c4a343c4633a4ac8f22a1d33680f222511:create

alter table ${demo}.demo_trn_employees
    add constraint demo_trn_employees_status_ck
        check ( status in ( 'ACTIVE', 'INACTIVE' ) ) enable;

-- changeset DEMO:1793890723626 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_employees.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_employees.sql:null:9a2045a4d193d1d752be5dd1d520e5244e896817:create

alter table ${demo}.demo_trn_employees add constraint demo_trn_employees_uq1 unique ( employee_number )
    using index enable;

-- changeset DEMO:1793890723665 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_employees.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_employees.sql:null:018096aa37a8500e16af0191f14162e6684edab5:create

alter table ${demo}.demo_trn_employees add constraint demo_trn_employees_uq2 unique ( email )
    using index enable;

