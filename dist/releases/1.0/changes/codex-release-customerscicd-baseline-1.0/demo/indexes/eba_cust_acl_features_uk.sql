-- liquibase formatted sql
-- changeset DEMO:1793805467204 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/indexes/eba_cust_acl_features_uk.sql
-- sqlcl_snapshot src/database/demo/indexes/eba_cust_acl_features_uk.sql:null:87b3ebaafede4a0b9994a6676247791ff583a7c9:create

create unique index ${demo}.eba_cust_acl_features_uk on
    ${demo}.eba_cust_acl_features (
        authorization_name
    );

