-- liquibase formatted sql
-- changeset DEMO:1793874432359 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_activity_types_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_activity_types_uk.sql:null:2e740b3615b2564bf4494719734644f4dedcc70d:create

create unique index ${demo}.eba_cust_activity_types_uk on
    ${demo}.eba_cust_activity_types (
        name
    );

