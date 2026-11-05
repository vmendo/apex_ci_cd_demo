alter table demo.demo_trn_sessions
    add constraint demo_trn_sessions_fk3
        foreign key ( room_id )
            references demo.demo_trn_rooms ( id )
        enable;


-- sqlcl_snapshot {"hash":"9b196152153a52e81c4b72ea7e0743889d9dc92b","type":"REF_CONSTRAINT","name":"DEMO_TRN_SESSIONS_FK3","schemaName":"DEMO","sxml":""}