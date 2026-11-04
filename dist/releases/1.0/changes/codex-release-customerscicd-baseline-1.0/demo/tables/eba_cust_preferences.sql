-- liquibase formatted sql
-- changeset DEMO:1793805471933 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_preferences.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_preferences.sql:null:4580de271839bf5eaff2305105bed2cab4f66235:create

create table ${demo}.eba_cust_preferences (
    id               number not null enable,
    preference_name  varchar2(255 byte) not null enable,
    preference_value varchar2(255 byte),
    created_by       varchar2(255 byte) not null enable,
    created_on       timestamp(6) with time zone,
    updated_by       varchar2(255 byte),
    updated_on       timestamp(6) with time zone
);

-- changeset DEMO:1793805471967 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_preferences.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_preferences.sql:null:9f3ca094af08beccf2e2f8c5b678480629507d68:create

alter table ${demo}.eba_cust_preferences
    add constraint eba_cust_preferences_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805471973 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_preferences.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_preferences.sql:null:6410521d56b4bedbac579c0185035cd1a303e296:create

alter table ${demo}.eba_cust_preferences
    add constraint eba_cust_prefs_prefname_ck check ( upper(preference_name) = preference_name ) enable;

