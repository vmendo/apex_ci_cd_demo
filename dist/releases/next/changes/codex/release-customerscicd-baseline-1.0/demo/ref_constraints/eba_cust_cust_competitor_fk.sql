-- liquibase formatted sql
-- changeset DEMO:1793805253939 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_cust_competitor_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_cust_competitor_fk.sql:null:d2f473ea54430174a9f7de0a033906c51315633a:create

alter table ${demo}.eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_fk
        foreign key ( customer_id )
            references ${demo}.eba_cust_customers ( id )
                on delete cascade
        enable;

