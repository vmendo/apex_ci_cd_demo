-- liquibase formatted sql
-- changeset WKSP_DEMO:1765883238762 stripComments:false  logicalFilePath:release_base_1.0/wksp_demo/package_specs/eba_demo_data_load.sql
-- sqlcl_snapshot src/database/wksp_demo/package_specs/eba_demo_data_load.sql:null:38712ce7a650441354e0d2df5661a6fd71a9db0d:create

create or replace package eba_demo_data_load as
    procedure reset_sample;

    function zip_to_csv (
        p_blob_content in blob,
        p_mime_type    in varchar2
    ) return blob;

    procedure set_file_blob (
        p_blob in blob
    );

    function get_file_blob return blob;

end eba_demo_data_load;
/

