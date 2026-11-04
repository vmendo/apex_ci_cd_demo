-- liquibase formatted sql
-- changeset DEMO:1793805258291 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_notes.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_notes.sql:null:d86a6665d99b33e7c41918d57a8d2d654a3850f9:create

create table ${demo}.eba_cust_notes (
    id                 number,
    row_version_number number not null enable,
    customer_id        number not null enable,
    contact_id         number,
    note_date          date,
    note               clob,
    tags               varchar2(4000 byte),
    created            timestamp(6) with time zone,
    created_by         varchar2(255 byte),
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805258301 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_notes.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_notes.sql:null:858abbce35870bf9472b4f998663f6b0b501aa89:create

alter table ${demo}.eba_cust_notes
    add constraint eba_cust_notes_pk primary key ( id )
        using index enable;

