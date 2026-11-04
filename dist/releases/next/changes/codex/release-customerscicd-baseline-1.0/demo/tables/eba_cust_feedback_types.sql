-- liquibase formatted sql
-- changeset DEMO:1793805258212 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_feedback_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_feedback_types.sql:null:1d2f2e15a7623a657df14bce65949487b3354cf9:create

create table ${demo}.eba_cust_feedback_types (
    id            number
        constraint eba_cust_feedback_types_pk not null enable,
    feedback_type varchar2(30 byte),
    created       timestamp(6) with time zone,
    created_by    varchar2(255 byte),
    updated       timestamp(6) with time zone,
    updated_by    varchar2(255 byte)
);

-- changeset DEMO:1793805258241 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_feedback_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_feedback_types.sql:null:5f5303688e78df6c00dc4cd5f190c41adb761b13:create

alter table ${demo}.eba_cust_feedback_types add primary key ( id )
    using index enable;

