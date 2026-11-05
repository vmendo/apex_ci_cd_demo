-- liquibase formatted sql
-- changeset DEMO:1793890723446 stripComments:false  logicalFilePath:baseline-1.0/demo/ref_constraints/demo_trn_sessions_fk3.sql
-- sqlcl_snapshot src/database/demo/ref_constraints/demo_trn_sessions_fk3.sql:null:304b517e855abf3d273959d4fb73f2ed4c369279:create

alter table ${demo}.demo_trn_sessions
    add constraint demo_trn_sessions_fk3
        foreign key ( room_id )
            references ${demo}.demo_trn_rooms ( id )
        enable;

