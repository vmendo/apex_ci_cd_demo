create index demo.demo_trn_sessions_fk1_ix on
    demo.demo_trn_sessions (
        course_id
    );


-- sqlcl_snapshot {"hash":"f855e7181ae35a6b69960d34a6eadf35a4d6319a","type":"INDEX","name":"DEMO_TRN_SESSIONS_FK1_IX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_SESSIONS_FK1_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>DEMO_TRN_SESSIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>COURSE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}