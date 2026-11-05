create index demo.eba_cust_feedback_type_idx on
    demo.eba_cust_feedback (
        type_id
    );


-- sqlcl_snapshot {"hash":"c0890a172082d78e60d2b93bbb9b33b323c182d2","type":"INDEX","name":"EBA_CUST_FEEDBACK_TYPE_IDX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_FEEDBACK_TYPE_IDX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_FEEDBACK</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TYPE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}