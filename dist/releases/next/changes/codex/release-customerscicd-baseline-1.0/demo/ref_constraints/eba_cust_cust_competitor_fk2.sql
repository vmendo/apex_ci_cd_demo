-- liquibase formatted sql
-- changeset DEMO:1793805253994 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_cust_competitor_fk2.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_cust_competitor_fk2.sql:null:645d41617a64e4e71c65fd3f588f49522a3f3fb4:create

alter table ${demo}.eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_fk2
        foreign key ( competitor_id )
            references ${demo}.eba_cust_competitors ( id )
                on delete cascade
        enable;

