-- liquibase formatted sql
-- changeset DEMO:1793805472140 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_use_case.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_use_case.sql:null:2e8f319716fabca2bfcde0d9f16170a39e6bfff4:create

create table ${demo}.eba_cust_use_case (
    id                 number not null enable,
    row_version_number number,
    use_case           varchar2(60 byte) not null enable,
    description        varchar2(4000 byte),
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793805472145 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_use_case.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_use_case.sql:null:0c277e226112af31d5956d0649735dbee70b8a41:create

create unique index ${demo}.eba_cust_use_case_uk on
    ${demo}.eba_cust_use_case (
        use_case
    );

-- changeset DEMO:1793805472175 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_use_case.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_use_case.sql:null:f76c2e76fec76178f62921b636c0a76ffa7672e5:create

alter table ${demo}.eba_cust_use_case
    add constraint eba_cust_use_case_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805472182 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_use_case.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_use_case.sql:null:e0eae1f06372217b8003a4c79679a2df6c7a67b9:create

alter table ${demo}.eba_cust_use_case
    add constraint eba_cust_use_case_uk
        unique ( use_case )
            using index ${demo}.eba_cust_use_case_uk enable;

