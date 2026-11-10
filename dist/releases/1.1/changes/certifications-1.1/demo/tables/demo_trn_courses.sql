-- liquibase formatted sql
-- changeset DEMO:1794308822813 stripComments:false  logicalFilePath:certifications-1.1/demo/tables/demo_trn_courses.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_courses.sql:4830d81d2bcc9d7275598c38bf26a3264c31e797:606d5d036274214a77de3554bde2e4d3af866877:alter

alter table ${demo}.demo_trn_courses add (
    certification_required varchar2(1) default 'N'
        constraint demo_trn_courses_cert_req_nn not null enable
)
/

-- changeset DEMO:1794308822819 stripComments:false  logicalFilePath:certifications-1.1/demo/tables/demo_trn_courses.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_courses.sql:4830d81d2bcc9d7275598c38bf26a3264c31e797:48c4574b9522b5b0a72a5141fabd37127b328b20:alter

alter table ${demo}.demo_trn_courses
    add constraint demo_trn_courses_cert_req_ck
        check ( certification_required in ( 'Y', 'N' ) ) enable
/

