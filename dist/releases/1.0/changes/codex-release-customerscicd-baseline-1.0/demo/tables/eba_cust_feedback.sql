-- liquibase formatted sql
-- changeset DEMO:1793805468263 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_feedback.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_feedback.sql:null:bb163478aca19fb6dbab321e97c02a7084a79c64:create

create table ${demo}.eba_cust_feedback (
    id             number
        constraint eba_cust_feedback_pk not null enable,
    application_id number not null enable,
    page_id        number not null enable,
    feedback       varchar2(4000 byte),
    response       varchar2(4000 byte),
    type_id        number,
    status         varchar2(30 byte),
    created        timestamp(6) with time zone,
    created_by     varchar2(255 byte),
    updated        timestamp(6) with time zone,
    updated_by     varchar2(255 byte)
);

-- changeset DEMO:1793805468298 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_feedback.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_feedback.sql:null:63ef08a0e517857fc622d135c6db6f1d8d1911ff:create

alter table ${demo}.eba_cust_feedback add primary key ( id )
    using index enable;

