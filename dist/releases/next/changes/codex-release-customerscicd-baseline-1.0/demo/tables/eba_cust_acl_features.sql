-- liquibase formatted sql
-- changeset DEMO:1793874433600 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_acl_features.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_acl_features.sql:null:650771d5d446fc33469d29a5daef4e563b3dce7c:create

create table ${demo}.eba_cust_acl_features (
    id                 number not null enable,
    authorization_name varchar2(255 byte) not null enable,
    access_level_id    number not null enable,
    feature            varchar2(255 byte) not null enable,
    row_version        number,
    created_by         varchar2(255 byte) not null enable,
    created            timestamp(6) with time zone,
    updated_by         varchar2(255 byte),
    updated            timestamp(6) with time zone
);

-- changeset DEMO:1793874437553 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_acl_features.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_acl_features.sql:null:68525439264e97009b7405375866de8b0a577e2e:create

alter table ${demo}.eba_cust_acl_features
    add constraint eba_cust_acl_features_pk primary key ( id )
        using index enable;

