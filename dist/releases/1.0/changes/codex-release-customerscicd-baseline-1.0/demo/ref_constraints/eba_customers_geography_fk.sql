-- liquibase formatted sql
-- changeset DEMO:1793874433497 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_customers_geography_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_customers_geography_fk.sql:null:0c4be94a8f6cc2d5f55b2c182622980d4bb0a795:create

alter table ${demo}.eba_cust_customers
    add constraint eba_customers_geography_fk
        foreign key ( geography_id )
            references ${demo}.eba_cust_geographies ( id )
                on delete cascade
        enable;

