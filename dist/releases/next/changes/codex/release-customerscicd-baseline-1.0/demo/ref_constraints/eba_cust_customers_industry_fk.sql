-- liquibase formatted sql
-- changeset DEMO:1793805254021 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_customers_industry_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_customers_industry_fk.sql:null:db461de4e967294bf2745c411ef7877790ae07a1:create

alter table ${demo}.eba_cust_customers
    add constraint eba_cust_customers_industry_fk
        foreign key ( industry_id )
            references ${demo}.eba_cust_industries ( id )
                on delete cascade
        enable;

