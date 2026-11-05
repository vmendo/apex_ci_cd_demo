-- liquibase formatted sql
-- changeset DEMO:1793890723410 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_rooms_fk1.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_rooms_fk1.sql:null:0b24f229211a32d8426afdcb5fd7859d707856c9:create

alter table ${demo}.demo_trn_rooms
    add constraint demo_trn_rooms_fk1
        foreign key ( location_id )
            references ${demo}.demo_trn_locations ( id )
        enable;

