create index demo.eba_cust_activity_ref_idx3 on
    demo.eba_cust_activity_ref (
        contact_id
    );


-- sqlcl_snapshot {"hash":"a8f823d434fcd0ce72352975b190700f06b72df7","type":"INDEX","name":"EBA_CUST_ACTIVITY_REF_IDX3","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_REF_IDX3</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CONTACT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}