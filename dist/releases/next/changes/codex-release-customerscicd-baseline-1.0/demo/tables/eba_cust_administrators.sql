-- liquibase formatted sql
-- changeset DEMO:1793805468094 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_administrators.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_administrators.sql:null:8be391d65f05394b7c736c88c0e9eb2372df854c:create

create table ${demo}.eba_cust_administrators (
    id                 number not null enable,
    row_version_number number,
    app_user           varchar2(255 byte) not null enable,
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805468109 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_administrators.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_administrators.sql:null:85ffe12421530624117afc58f99e27e6a45f2bb3:create

create unique index ${demo}.eba_cust_administrators_uk on
    ${demo}.eba_cust_administrators (
        app_user
    );

-- changeset DEMO:1793805468129 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_administrators.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_administrators.sql:null:2dbdffe2d5de3cab86f3339347f1f3b2ecff8a23:create

alter table ${demo}.eba_cust_administrators
    add constraint eba_cust_administrators_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805468139 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_administrators.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_administrators.sql:null:869aab47b485d4dd0e1d4097e2d82a53319e7d69:create

alter table ${demo}.eba_cust_administrators
    add constraint eba_cust_administrators_uk
        unique ( app_user )
            using index ${demo}.eba_cust_administrators_uk enable;

