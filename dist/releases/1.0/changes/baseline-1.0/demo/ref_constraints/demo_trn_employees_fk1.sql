-- liquibase formatted sql
-- changeset DEMO:1793890723346 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_employees_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_employees_fk1.sql:null:fa8b7c47b2c60300e1705b1acbe9fb62e0fcac1a:create

alter table ${demo}.demo_trn_employees
    add constraint demo_trn_employees_fk1
        foreign key ( department_id )
            references ${demo}.demo_trn_departments ( id )
        enable;

