-- liquibase formatted sql
-- changeset DEMO:1793891578257 stripComments:false  logicalFilePath:certifications-1.1/demo/ref_constraints/demo_trn_certifications_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_certifications_fk1.sql:null:0351c72a278a20309d71fd4e6347e5759e4ebc34:create

alter table ${demo}.demo_trn_certifications
    add constraint demo_trn_certifications_fk1
        foreign key ( employee_id )
            references ${demo}.demo_trn_employees ( id )
        enable;

