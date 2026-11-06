-- liquibase formatted sql
-- changeset DEMO:1793967273212 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_instructors.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_instructors.sql:null:389fb9089a390b1c129ff305ff316f48896ccb3d:create

create table ${demo}.demo_trn_instructors (
    id          number default ${demo}.demo_trn_instructors_seq.nextval,
    first_name  varchar2(100 byte)
        constraint demo_trn_instructors_first_name_nn not null enable,
    last_name   varchar2(100 byte)
        constraint demo_trn_instructors_last_name_nn not null enable,
    email       varchar2(255 byte)
        constraint demo_trn_instructors_email_nn not null enable,
    specialty   varchar2(200 byte),
    active_flag varchar2(1 byte) default 'Y'
        constraint demo_trn_instructors_active_flag_nn not null enable
);

-- changeset DEMO:1793967273253 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_instructors.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_instructors.sql:null:e43594f00af254085ac75cdd262a2a8db9ce02f3:create

alter table ${demo}.demo_trn_instructors
    add constraint demo_trn_instructors_active_ck
        check ( active_flag in ( 'Y', 'N' ) ) enable;

-- changeset DEMO:1793967273271 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_instructors.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_instructors.sql:null:ffd24fbbb5188a98da1f780f7a9ef563669b156b:create

alter table ${demo}.demo_trn_instructors
    add constraint demo_trn_instructors_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793967273308 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_instructors.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_instructors.sql:null:ef7cc20dae625defbcb6e904e45f9b5cb0022133:create

alter table ${demo}.demo_trn_instructors add constraint demo_trn_instructors_uq1 unique ( email )
    using index enable;

