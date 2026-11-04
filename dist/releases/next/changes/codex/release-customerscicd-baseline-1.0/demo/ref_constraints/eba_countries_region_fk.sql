-- liquibase formatted sql
-- changeset DEMO:1793805253458 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_countries_region_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_countries_region_fk.sql:null:8336ca4b112b0193589bbc6a6978e1c61f13b7a3:create

alter table ${demo}.eba_cust_countries
    add constraint eba_countries_region_fk
        foreign key ( region_id )
            references ${demo}.eba_cust_geographies ( id )
                on delete cascade
        enable;

