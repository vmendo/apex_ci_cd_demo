-- liquibase formatted sql
-- changeset DEMO:1793805252969 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/indexes/eba_cust_clicks_idx2.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_clicks_idx2.sql:null:96b86cedb0c42ae788cf2825de95a9bcd7b5b911:create

create index ${demo}.eba_cust_clicks_idx2 on
    ${demo}.eba_cust_clicks ( sys_extract_utc(view_timestamp) );

