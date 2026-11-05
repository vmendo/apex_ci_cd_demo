-- liquibase formatted sql
-- changeset DEMO:1793890723529 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_courses.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_courses.sql:null:3c07336c8c30f14a42a6cf38066c2f4f9c41d256:create

create table ${demo}.demo_trn_courses (
    id             number default ${demo}.demo_trn_courses_seq.nextval,
    category_id    number
        constraint demo_trn_courses_category_id_nn not null enable,
    course_code    varchar2(20 byte)
        constraint demo_trn_courses_course_code_nn not null enable,
    course_name    varchar2(200 byte)
        constraint demo_trn_courses_course_name_nn not null enable,
    description    varchar2(1000 byte),
    duration_hours number(4, 1)
        constraint demo_trn_courses_duration_hours_nn not null enable,
    course_fee     number(10, 2) default 0
        constraint demo_trn_courses_course_fee_nn not null enable,
    status         varchar2(20 byte) default 'ACTIVE'
        constraint demo_trn_courses_status_nn not null enable
);

-- changeset DEMO:1793890723589 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_courses.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_courses.sql:null:d88cb2324d79895ec144bdd4a2b5c353b0716328:create

alter table ${demo}.demo_trn_courses
    add constraint demo_trn_courses_duration_ck
        check ( duration_hours > 0
                and duration_hours <= 80 ) enable;

-- changeset DEMO:1793890723646 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_courses.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_courses.sql:null:76bf9e1c329e57dca3586ada02198f0ddf1fa8f7:create

alter table ${demo}.demo_trn_courses
    add constraint demo_trn_courses_fee_ck check ( course_fee >= 0 ) enable;

-- changeset DEMO:1793890723684 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_courses.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_courses.sql:null:3696e40469a93ccc844bc0fd68319ba842842420:create

alter table ${demo}.demo_trn_courses
    add constraint demo_trn_courses_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793890723710 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_courses.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_courses.sql:null:17a88711fddd04e921cf2ac0e4c65738435c6652:create

alter table ${demo}.demo_trn_courses
    add constraint demo_trn_courses_status_ck
        check ( status in ( 'ACTIVE', 'RETIRED' ) ) enable;

-- changeset DEMO:1793890723718 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_courses.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_courses.sql:null:e5b8c72188742c3e7683710f95d2f29d3429774e:create

alter table ${demo}.demo_trn_courses add constraint demo_trn_courses_uq1 unique ( course_code )
    using index enable;

