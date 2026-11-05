create index demo.demo_trn_sessions_fk2_ix on
    demo.demo_trn_sessions (
        instructor_id
    );


-- sqlcl_snapshot {"hash":"2d9abba8e4d72372dd3d9380ca4682469e7f62e3","type":"INDEX","name":"DEMO_TRN_SESSIONS_FK2_IX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_SESSIONS_FK2_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>DEMO_TRN_SESSIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>INSTRUCTOR_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}