create index demo.eba_cust_activity_ref_idx2 on
    demo.eba_cust_activity_ref (
        customer_id
    );


-- sqlcl_snapshot {"hash":"72c8e6a61e171fc6dd2097bab8372920248025e3","type":"INDEX","name":"EBA_CUST_ACTIVITY_REF_IDX2","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_REF_IDX2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}