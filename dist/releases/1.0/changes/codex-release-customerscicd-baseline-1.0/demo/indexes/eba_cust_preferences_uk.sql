-- liquibase formatted sql
-- changeset DEMO:1793805467361 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_preferences_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_preferences_uk.sql:null:7e9bbf0ada8f44135617818577931f157294b904:create

create unique index ${demo}.eba_cust_preferences_uk on
    ${demo}.eba_cust_preferences (
        preference_name
    );

