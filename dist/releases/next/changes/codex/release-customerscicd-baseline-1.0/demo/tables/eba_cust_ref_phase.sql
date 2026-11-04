-- liquibase formatted sql
-- changeset DEMO:1793805258380 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_ref_phase.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_ref_phase.sql:null:e00da93e1b2a81d45bf0e51b4edb0dac04bb3bbd:create

create table ${demo}.eba_cust_ref_phase (
    id                     number not null enable,
    status                 varchar2(60 byte) not null enable,
    description            varchar2(4000 byte),
    is_an_active_reference varchar2(1 byte) not null enable,
    display_sequence       number,
    created                timestamp(6) with time zone not null enable,
    created_by             varchar2(255 byte) not null enable,
    updated                timestamp(6) with time zone,
    updated_by             varchar2(255 byte)
);

-- changeset DEMO:1793805258393 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_ref_phase.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_ref_phase.sql:null:4569bde2fef9c7a24c6056b5ad4fb773f509606e:create

create unique index ${demo}.eba_cust_ref_phase_uk on
    ${demo}.eba_cust_ref_phase (
        status
    );

-- changeset DEMO:1793805258406 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_ref_phase.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_ref_phase.sql:null:e5e68b8a8fb1084c8aed0143822b9d2cbb12f1f4:create

alter table ${demo}.eba_cust_ref_phase
    add constraint eba_cust_ref_phase_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793805258431 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_ref_phase.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_ref_phase.sql:null:4ba1de6ed90058918dba4273f58e46b3725add67:create

alter table ${demo}.eba_cust_ref_phase
    add constraint eba_cust_ref_phase_uk
        unique ( status )
            using index ${demo}.eba_cust_ref_phase_uk enable;

