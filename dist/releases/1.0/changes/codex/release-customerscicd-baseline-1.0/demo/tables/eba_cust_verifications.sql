-- liquibase formatted sql
-- changeset DEMO:1793805258477 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_verifications.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_verifications.sql:null:7c7055b72825de4cd45c2be644e4ecdf6e4bfc72:create

create table ${demo}.eba_cust_verifications (
    id                   number,
    cust_id              number,
    verified_by          varchar2(255 byte) not null enable,
    verification_comment varchar2(4000 byte),
    created              timestamp(6) with time zone,
    created_by           varchar2(255 byte),
    updated              timestamp(6) with time zone,
    updated_by           varchar2(255 byte)
);

-- changeset DEMO:1793805258506 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_verifications.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_verifications.sql:null:6509831f03f21192a26cca6470f8501283683c53:create

alter table ${demo}.eba_cust_verifications add primary key ( id )
    using index enable;

