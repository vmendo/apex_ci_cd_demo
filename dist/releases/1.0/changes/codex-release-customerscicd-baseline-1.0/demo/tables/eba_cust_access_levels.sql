-- liquibase formatted sql
-- changeset DEMO:1793874433541 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_access_levels.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_access_levels.sql:null:e7ff82ad2f5a951bf4d5ab95c0493330f2549d14:create

create table ${demo}.eba_cust_access_levels (
    id           number not null enable,
    access_level varchar2(30 byte) not null enable,
    row_version  number
);

-- changeset DEMO:1793874433591 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_access_levels.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_access_levels.sql:null:edac06f4eec437686fe4d46286de8104251995c9:create

alter table ${demo}.eba_cust_access_levels
    add constraint eba_cust_access_levels_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793874433606 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_access_levels.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_access_levels.sql:null:c42c39043969840d87304b43304a23c58007c3ad:create

alter table ${demo}.eba_cust_access_levels
    add constraint eba_cust_acc_lvl_acc_lvl_ck
        check ( access_level in ( 'Administrator', 'Contributor', 'Reader' ) ) enable;

