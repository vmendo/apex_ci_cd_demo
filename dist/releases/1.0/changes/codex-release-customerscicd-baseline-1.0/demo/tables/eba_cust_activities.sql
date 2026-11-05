-- liquibase formatted sql
-- changeset DEMO:1793874433586 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_activities.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_activities.sql:null:bfaf4b73b7e783ba535f510a0b6535fd08043108:create

create table ${demo}.eba_cust_activities (
    id                 number not null enable,
    row_version_number number not null enable,
    type_id            number not null enable,
    name               varchar2(255 byte),
    description        varchar2(4000 byte),
    activity_date      date,
    owner              varchar2(255 byte),
    location           varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793874433610 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_activities.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_activities.sql:null:63d3fbad5bc11e80001f959d6fbe0e23a658d910:create

alter table ${demo}.eba_cust_activities
    add constraint eba_cust_activities_pk primary key ( id )
        using index enable;

