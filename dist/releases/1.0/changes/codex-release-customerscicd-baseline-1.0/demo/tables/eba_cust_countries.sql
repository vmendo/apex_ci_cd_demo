-- liquibase formatted sql
-- changeset DEMO:1793805468162 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_countries.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_countries.sql:null:18f2cb329fa3a647f7d25cacf87ea75c3dfd881d:create

create table ${demo}.eba_cust_countries (
    id                 number,
    country_code       varchar2(30 byte) not null enable,
    country_name       varchar2(255 byte) not null enable,
    region_id          number,
    display_yn         varchar2(1 byte),
    row_version_number number,
    created            timestamp(6) with time zone,
    created_by         varchar2(255 byte),
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805468175 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_countries.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_countries.sql:null:972e48c83c483cccfd1ed63db1acdddff5db64db:create

alter table ${demo}.eba_cust_countries
    add constraint eba_cust_countries_disp_cc
        check ( display_yn in ( 'Y', 'N' ) ) enable;

-- changeset DEMO:1793805468206 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_countries.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_countries.sql:null:8e734440aee9fdb0f6165a1e3280ba95b56679e7:create

alter table ${demo}.eba_cust_countries add primary key ( id )
    using index enable;

