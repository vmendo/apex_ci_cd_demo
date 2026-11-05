-- liquibase formatted sql
-- changeset DEMO:1793874433348 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/ref_constraints/eba_cust_cust_part_fk2.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/eba_cust_cust_part_fk2.sql:null:dd6c395eee2a316a8f85b975db8358946e32145f:create

alter table ${demo}.eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_fk2
        foreign key ( partner_id )
            references ${demo}.eba_cust_impl_partners ( id )
                on delete cascade
        enable;

