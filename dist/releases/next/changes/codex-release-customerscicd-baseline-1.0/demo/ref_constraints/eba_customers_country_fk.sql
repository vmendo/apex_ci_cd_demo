-- liquibase formatted sql
-- changeset DEMO:1793874433502 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_customers_country_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_customers_country_fk.sql:null:3171934a43c2bc85bb5c3c0131bc6db1fe9e168b:create

alter table ${demo}.eba_cust_customers
    add constraint eba_customers_country_fk
        foreign key ( country_id )
            references ${demo}.eba_cust_countries ( id )
                on delete cascade
        enable;

