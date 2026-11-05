-- liquibase formatted sql
-- changeset DEMO:1793891578274 stripComments:false  logicalFilePath:certifications-1.1/demo/tables/demo_trn_certifications.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_certifications.sql:null:9d8bc787667e5ff87aa70427e5f4c623fa80527e:create

create table ${demo}.demo_trn_certifications (
    id               number default ${demo}.demo_trn_certifications_seq.nextval,
    employee_id      number
        constraint demo_trn_certifications_employee_id_nn not null enable,
    course_id        number
        constraint demo_trn_certifications_course_id_nn not null enable,
    certificate_code varchar2(40 byte)
        constraint demo_trn_certifications_certificate_code_nn not null enable,
    issued_on        date default trunc(sysdate)
        constraint demo_trn_certifications_issued_on_nn not null enable,
    expires_on       date,
    status           varchar2(20 byte) default 'VALID'
        constraint demo_trn_certifications_status_nn not null enable,
    notes            varchar2(1000 byte)
);

-- changeset DEMO:1793891578291 stripComments:false  logicalFilePath:certifications-1.1/demo/tables/demo_trn_certifications.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_certifications.sql:null:ecccdadfc487bad4524fe63574f02efee4f97346:create

alter table ${demo}.demo_trn_certifications
    add constraint demo_trn_certifications_dates_ck
        check ( expires_on is null
                or expires_on >= issued_on ) enable;

-- changeset DEMO:1793891578296 stripComments:false  logicalFilePath:certifications-1.1/demo/tables/demo_trn_certifications.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_certifications.sql:null:2f78ece5509682eaa2e5da7284936ae2c0cc9e58:create

alter table ${demo}.demo_trn_certifications
    add constraint demo_trn_certifications_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793891578302 stripComments:false  logicalFilePath:certifications-1.1/demo/tables/demo_trn_certifications.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_certifications.sql:null:a7b79fe5c6eb9754360dd2df6f6f7fc0aa176c5e:create

alter table ${demo}.demo_trn_certifications
    add constraint demo_trn_certifications_status_ck
        check ( status in ( 'VALID', 'EXPIRED', 'REVOKED' ) ) enable;

-- changeset DEMO:1793891578307 stripComments:false  logicalFilePath:certifications-1.1/demo/tables/demo_trn_certifications.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_certifications.sql:null:9108586b4d7db4e6fc970161147d4520849e7488:create

alter table ${demo}.demo_trn_certifications add constraint demo_trn_certifications_uq1 unique ( certificate_code )
    using index enable;

