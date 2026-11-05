-- liquibase formatted sql
-- changeset DEMO:1793890723680 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_sessions.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_sessions.sql:null:82010f60e2e689c7054698b489be01dfb81faa72:create

create table ${demo}.demo_trn_sessions (
    id            number default ${demo}.demo_trn_sessions_seq.nextval,
    course_id     number
        constraint demo_trn_sessions_course_id_nn not null enable,
    instructor_id number
        constraint demo_trn_sessions_instructor_id_nn not null enable,
    room_id       number
        constraint demo_trn_sessions_room_id_nn not null enable,
    session_code  varchar2(30 byte)
        constraint demo_trn_sessions_session_code_nn not null enable,
    start_date    date
        constraint demo_trn_sessions_start_date_nn not null enable,
    end_date      date
        constraint demo_trn_sessions_end_date_nn not null enable,
    capacity      number(4, 0)
        constraint demo_trn_sessions_capacity_nn not null enable,
    status        varchar2(20 byte) default 'SCHEDULED'
        constraint demo_trn_sessions_status_nn not null enable
);

-- changeset DEMO:1793890723689 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_sessions.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_sessions.sql:null:8b932152f036d878fd2214e4ce757ffeac8e1aee:create

alter table ${demo}.demo_trn_sessions
    add constraint demo_trn_sessions_capacity_ck check ( capacity between 1 and 500 ) enable;

-- changeset DEMO:1793890723706 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_sessions.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_sessions.sql:null:b738748cbfe3dd97b3e4e96925fcf38c63b966d6:create

alter table ${demo}.demo_trn_sessions add constraint demo_trn_sessions_dates_ck check ( end_date > start_date ) enable;

-- changeset DEMO:1793890723714 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_sessions.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_sessions.sql:null:36de3f2889abe0c857436d5148e46dcd6009044d:create

alter table ${demo}.demo_trn_sessions
    add constraint demo_trn_sessions_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793890723722 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_sessions.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_sessions.sql:null:c6d0efcb064a643d87638d16f346486fa1081186:create

alter table ${demo}.demo_trn_sessions
    add constraint demo_trn_sessions_status_ck
        check ( status in ( 'SCHEDULED', 'COMPLETED', 'CANCELLED' ) ) enable;

-- changeset DEMO:1793890723727 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_sessions.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_sessions.sql:null:1c541ee1311053db0460237e57ab96be6d55b5ce:create

alter table ${demo}.demo_trn_sessions add constraint demo_trn_sessions_uq1 unique ( session_code )
    using index enable;

