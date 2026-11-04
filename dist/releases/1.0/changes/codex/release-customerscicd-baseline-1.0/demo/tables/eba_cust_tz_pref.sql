-- liquibase formatted sql
-- changeset DEMO:1793805258472 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_tz_pref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tz_pref.sql:null:0dfedb02fa0e26ef0b27e4339cc30fa020dba7f7:create

create table ${demo}.eba_cust_tz_pref (
    id                  number not null enable,
    row_version_number  number(*, 0),
    userid              varchar2(255 byte) not null enable,
    timezone_preference varchar2(255 byte) not null enable,
    created             timestamp(6) with time zone,
    created_by          varchar2(255 byte),
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255 byte)
);

-- changeset DEMO:1793805258508 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_tz_pref.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tz_pref.sql:null:5afd84ae08b241560efcc670d8f3f495b9420cb5:create

alter table ${demo}.eba_cust_tz_pref
    add constraint eba_cust_tz_pref_pk primary key ( id )
        using index enable;

