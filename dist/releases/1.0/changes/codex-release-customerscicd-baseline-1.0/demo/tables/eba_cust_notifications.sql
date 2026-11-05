-- liquibase formatted sql
-- changeset DEMO:1793874437897 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_notifications.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_notifications.sql:null:38941484e9956c7cf3435b894975ebfc86c9da2c:create

create table ${demo}.eba_cust_notifications (
    id                       number not null enable,
    row_version_number       number,
    notification_name        varchar2(255 byte) not null enable,
    notification_description varchar2(4000 byte),
    notification_type        varchar2(30 byte) not null enable,
    display_sequence         number,
    display_from             timestamp(6) with time zone,
    display_until            timestamp(6) with time zone,
    created_by               varchar2(255 byte) not null enable,
    created                  timestamp(6) with time zone,
    updated_by               varchar2(255 byte) not null enable,
    updated                  timestamp(6) with time zone
);

-- changeset DEMO:1793874437952 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_notifications.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_notifications.sql:null:85806dca1e2c03bc73f3d46b55290b1aba5082c4:create

alter table ${demo}.eba_cust_notifications
    add constraint eba_cust_notif_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793874437989 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_notifications.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_notifications.sql:null:2778f636f646d2413ca92bad7e179921a6fa3cb1:create

alter table ${demo}.eba_cust_notifications
    add constraint eba_cust_notif_tp_cc
        check ( notification_type in ( 'RED', 'YELLOW' ) ) enable;

