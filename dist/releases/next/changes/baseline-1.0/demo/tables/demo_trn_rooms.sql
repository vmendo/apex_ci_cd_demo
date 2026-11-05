-- liquibase formatted sql
-- changeset DEMO:1793890723657 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_rooms.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_rooms.sql:null:42427092f2c60587a392301749ca583d4f264b0b:create

create table ${demo}.demo_trn_rooms (
    id          number default ${demo}.demo_trn_rooms_seq.nextval,
    location_id number
        constraint demo_trn_rooms_location_id_nn not null enable,
    room_name   varchar2(100 byte)
        constraint demo_trn_rooms_room_name_nn not null enable,
    capacity    number(4, 0)
        constraint demo_trn_rooms_capacity_nn not null enable
);

-- changeset DEMO:1793890723673 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_rooms.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_rooms.sql:null:bb3c18ea733bab7241aa8bfbd0d9b4833ba3cdc3:create

alter table ${demo}.demo_trn_rooms
    add constraint demo_trn_rooms_capacity_ck check ( capacity between 1 and 500 ) enable;

-- changeset DEMO:1793890723693 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_rooms.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_rooms.sql:null:0aa6f7d2f9ebc144d8c1409d1d9586d3c7e94d6f:create

alter table ${demo}.demo_trn_rooms
    add constraint demo_trn_rooms_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793890723702 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_rooms.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_rooms.sql:null:3697f46ab60bcbf70415672e0eb8ad2d8fc36d41:create

alter table ${demo}.demo_trn_rooms
    add constraint demo_trn_rooms_uq1 unique ( location_id,
                                               room_name )
        using index enable;

