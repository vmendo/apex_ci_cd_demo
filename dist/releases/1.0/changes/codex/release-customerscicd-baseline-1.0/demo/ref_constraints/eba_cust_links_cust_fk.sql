-- liquibase formatted sql
-- changeset DEMO:1793805254058 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_links_cust_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_links_cust_fk.sql:null:7ad0784e2069ead5586c4eb22d88793c4a1edb1e:create

alter table ${demo}.eba_cust_links
    add constraint eba_cust_links_cust_fk
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

