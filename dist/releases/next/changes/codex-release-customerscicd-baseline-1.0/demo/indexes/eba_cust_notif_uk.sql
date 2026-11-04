-- liquibase formatted sql
-- changeset DEMO:1793805467365 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_notif_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_notif_uk.sql:null:eeab3082698a600a67673955af4b9aa56834d5b2:create

create unique index ${demo}.eba_cust_notif_uk on
    ${demo}.eba_cust_notifications (
        notification_name
    );

