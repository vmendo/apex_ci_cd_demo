-- liquibase formatted sql
-- changeset DEMO:1793805467199 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_activities_idx1.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_activities_idx1.sql:null:7f584048bc14c607d857d6d6001a4dfdd8eb39ec:create

create index ${demo}.eba_cust_activities_idx1 on
    ${demo}.eba_cust_activities (
        type_id
    );

