-- liquibase formatted sql
-- changeset DEMO:1793805472134 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_users.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_users.sql:null:00ccbbf9500bfe7c36e89d0539fbc83cb57befce:create

create table ${demo}.eba_cust_users (
    id              number not null enable,
    username        varchar2(255 byte) not null enable,
    access_level_id number not null enable,
    account_locked  varchar2(1 byte) not null enable,
    row_version     number,
    created_by      varchar2(255 byte) not null enable,
    created         timestamp(6) with time zone,
    updated_by      varchar2(255 byte),
    updated         timestamp(6) with time zone
);

-- changeset DEMO:1793805472148 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_users.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_users.sql:null:ee10b05103e59501ec305bc29106a980b0254798:create

alter table ${demo}.eba_cust_users
    add constraint eba_cust_users_acc_locked_ck
        check ( account_locked in ( 'Y', 'N' ) ) enable;

-- changeset DEMO:1793805472171 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_users.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_users.sql:null:cc837e1c8669955e9d255441c9377d03cbcf77ee:create

alter table ${demo}.eba_cust_users
    add constraint eba_cust_users_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805472202 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_users.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_users.sql:null:01263a549caa5e3263c5f03a5773a23d7b92971e:create

alter table ${demo}.eba_cust_users
    add constraint eba_cust_users_username_ck check ( upper(username) = username ) enable;

