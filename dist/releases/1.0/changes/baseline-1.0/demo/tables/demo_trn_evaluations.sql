-- liquibase formatted sql
-- changeset DEMO:1793890723535 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_evaluations.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_evaluations.sql:null:7067422b03b04c79d46a17c972970c9d7e77957f:create

create table ${demo}.demo_trn_evaluations (
    id            number default ${demo}.demo_trn_evaluations_seq.nextval,
    enrollment_id number
        constraint demo_trn_evaluations_enrollment_id_nn not null enable,
    score         number(1, 0)
        constraint demo_trn_evaluations_score_nn not null enable,
    comments      varchar2(1000 byte),
    submitted_at  date default sysdate
        constraint demo_trn_evaluations_submitted_at_nn not null enable
);

-- changeset DEMO:1793890723577 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_evaluations.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_evaluations.sql:null:63f6cdde407946fc2283a7d4690c82fb530fba46:create

alter table ${demo}.demo_trn_evaluations
    add constraint demo_trn_evaluations_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793890723604 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_evaluations.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_evaluations.sql:null:68bef6f967366873f56e219a5b1363c1d5185e9e:create

alter table ${demo}.demo_trn_evaluations
    add constraint demo_trn_evaluations_score_ck check ( score between 1 and 5 ) enable;

-- changeset DEMO:1793890723630 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_evaluations.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_evaluations.sql:null:df9a90dff55a0e5c47820bc0fad7f48e057a8522:create

alter table ${demo}.demo_trn_evaluations add constraint demo_trn_evaluations_uq1 unique ( enrollment_id )
    using index enable;

