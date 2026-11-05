-- liquibase formatted sql
-- changeset DEMO:1793874437945 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_reference_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_reference_types.sql:null:959be3f199061b2da3c1aa033105bd3ba6a74b41:create

create table ${demo}.eba_cust_reference_types (
    id                 number not null enable,
    row_version_number number,
    reference_type     varchar2(60 byte) not null enable,
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

-- changeset DEMO:1793874437960 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_reference_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_reference_types.sql:null:83d76de409847a24144875c59f1fa480fe2ef6aa:create

create unique index ${demo}.eba_cust_reference_types_uk on
    ${demo}.eba_cust_reference_types (
        reference_type
    );

-- changeset DEMO:1793874437983 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_reference_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_reference_types.sql:null:04611c4a84b10fbb26c82f43f58516e170fa3b33:create

alter table ${demo}.eba_cust_reference_types
    add constraint eba_cust_reference_types_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793874437995 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_reference_types.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_reference_types.sql:null:c652764a7ecde1e85ebafc38abb55e5e4ada9132:create

alter table ${demo}.eba_cust_reference_types
    add constraint eba_cust_reference_types_uk
        unique ( reference_type )
            using index ${demo}.eba_cust_reference_types_uk enable;

