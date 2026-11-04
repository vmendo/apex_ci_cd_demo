-- liquibase formatted sql
-- changeset DEMO:1793805467618 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/package_specs/eba_cust_sample_data.sql
-- sqlcl_snapshot src/database/demo/package_specs/eba_cust_sample_data.sql:null:cee1208089c4d9b5aa9bff6a41297112e485dba2:create

create or replace package ${demo}.eba_cust_sample_data as

    -------------------------------------------------------------------------
    procedure create_sample_data;
    
    -------------------------------------------------------------------------
    procedure remove_sample_data;

end eba_cust_sample_data;
/

