-- liquibase formatted sql
-- changeset DEMO:1793967273005 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_courses_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_courses_fk1.sql:null:0fe8ffcf45564faf85b2afedf8a287d3c03ea563:create

alter table ${demo}.demo_trn_courses
    add constraint demo_trn_courses_fk1
        foreign key ( category_id )
            references ${demo}.demo_trn_categories ( id )
        enable;

