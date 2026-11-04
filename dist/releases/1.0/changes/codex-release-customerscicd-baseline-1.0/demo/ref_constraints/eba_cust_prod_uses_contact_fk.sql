-- liquibase formatted sql
-- changeset DEMO:1793805467997 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_prod_uses_contact_fk.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_prod_uses_contact_fk.sql:null:1d8a2eae7c5b79276b3a6b5d2f455bd4c507ac1e:create

alter table ${demo}.eba_cust_product_uses
    add constraint eba_cust_prod_uses_contact_fk
        foreign key ( customer_contact_id )
            references ${demo}.eba_cust_contacts ( id )
                on delete cascade
        enable;

