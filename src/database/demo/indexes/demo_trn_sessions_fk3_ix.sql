create index demo.demo_trn_sessions_fk3_ix on
    demo.demo_trn_sessions (
        room_id
    );


-- sqlcl_snapshot {"hash":"0a07f4feef2c0402e291fa9313fd1c1c56acd616","type":"INDEX","name":"DEMO_TRN_SESSIONS_FK3_IX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_SESSIONS_FK3_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>DEMO_TRN_SESSIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ROOM_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}