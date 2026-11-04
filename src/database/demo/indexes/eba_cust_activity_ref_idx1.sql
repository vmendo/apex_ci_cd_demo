create index demo.eba_cust_activity_ref_idx1 on
    demo.eba_cust_activity_ref (
        activity_id
    );


-- sqlcl_snapshot {"hash":"3e5f3c3a7deaed4241cce6209c14e4752cee721d","type":"INDEX","name":"EBA_CUST_ACTIVITY_REF_IDX1","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_REF_IDX1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACTIVITY_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}