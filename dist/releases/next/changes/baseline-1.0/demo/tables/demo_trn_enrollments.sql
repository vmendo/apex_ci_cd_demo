-- liquibase formatted sql
-- changeset DEMO:1793890723548 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_enrollments.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_enrollments.sql:null:db8a8075be69e3e2efe65dda40dec82ad8b8a47c:create

create table ${demo}.demo_trn_enrollments (
    id          number default ${demo}.demo_trn_enrollments_seq.nextval,
    session_id  number
        constraint demo_trn_enrollments_session_id_nn not null enable,
    employee_id number
        constraint demo_trn_enrollments_employee_id_nn not null enable,
    enrolled_at date default sysdate
        constraint demo_trn_enrollments_enrolled_at_nn not null enable,
    status      varchar2(20 byte) default 'ENROLLED'
        constraint demo_trn_enrollments_status_nn not null enable
);

-- changeset DEMO:1793890723567 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_enrollments.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_enrollments.sql:null:192e4655fb0de0e9b9880381d111bb859b908576:create

alter table ${demo}.demo_trn_enrollments
    add constraint demo_trn_enrollments_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793890723613 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_enrollments.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_enrollments.sql:null:7cf04570e82da629188c8940fc367b7bf25890c7:create

alter table ${demo}.demo_trn_enrollments
    add constraint demo_trn_enrollments_status_ck
        check ( status in ( 'ENROLLED', 'COMPLETED', 'CANCELLED' ) ) enable;

-- changeset DEMO:1793890723622 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_enrollments.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_enrollments.sql:null:d8e43d2ff898e8f25a4b4f24cfa2cdcb806f3b41:create

alter table ${demo}.demo_trn_enrollments
    add constraint demo_trn_enrollments_uq1 unique ( session_id,
                                                     employee_id )
        using index enable;

