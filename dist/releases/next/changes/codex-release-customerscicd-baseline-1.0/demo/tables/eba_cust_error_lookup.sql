-- liquibase formatted sql
-- changeset DEMO:1793805468267 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_error_lookup.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_error_lookup.sql:null:d03e618683c203914c2f2a3af52de29ed61fa7fb:create

create table ${demo}.eba_cust_error_lookup (
    constraint_name varchar2(30 byte) not null enable,
    message         varchar2(4000 byte) not null enable,
    language_code   varchar2(30 byte) not null enable
);

-- changeset DEMO:1793805468295 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_error_lookup.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_error_lookup.sql:null:fe84e217c1f7b532357664abdc25e7afbce466ca:create

alter table ${demo}.eba_cust_error_lookup
    add constraint eba_cust_error_lookup_pk primary key ( constraint_name )
        using index enable;

