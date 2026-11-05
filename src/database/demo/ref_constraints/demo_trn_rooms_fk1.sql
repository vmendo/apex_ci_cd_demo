alter table demo.demo_trn_rooms
    add constraint demo_trn_rooms_fk1
        foreign key ( location_id )
            references demo.demo_trn_locations ( id )
        enable;


-- sqlcl_snapshot {"hash":"58925114923d328bf33308f2ec367bf878504945","type":"REF_CONSTRAINT","name":"DEMO_TRN_ROOMS_FK1","schemaName":"DEMO","sxml":""}