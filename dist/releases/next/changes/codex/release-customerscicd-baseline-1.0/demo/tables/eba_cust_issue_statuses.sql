-- liquibase formatted sql
-- changeset DEMO:1793805258284 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_issue_statuses.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_issue_statuses.sql:null:9e52b6d03240707142185583dceec56f8efb30fc:create

create table ${demo}.eba_cust_issue_statuses (
    id         number,
    name       varchar2(255 byte) not null enable,
    details    varchar2(4000 byte),
    open_yn    varchar2(1 byte),
    created    timestamp(6) with time zone,
    created_by varchar2(255 byte),
    updated    timestamp(6) with time zone,
    updated_by varchar2(255 byte)
);

-- changeset DEMO:1793805258315 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_issue_statuses.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_issue_statuses.sql:null:135fedd29072b835b37017d271374ac94ea8bd9a:create

alter table ${demo}.eba_cust_issue_statuses
    add constraint check_open_yn
        check ( open_yn in ( 'Y', 'N' ) ) enable;

-- changeset DEMO:1793805258356 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_issue_statuses.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_issue_statuses.sql:null:c1b4c0d5be74f164d1b4dee8d8dc3eb3d78dc65a:create

alter table ${demo}.eba_cust_issue_statuses add primary key ( id )
    using index enable;

