create index demo.eba_cust_notes_i1 on
    demo.eba_cust_notes (
        customer_id
    );


-- sqlcl_snapshot {"hash":"7f1775d5f67878199606b7a5a85f5b001ec5642a","type":"INDEX","name":"EBA_CUST_NOTES_I1","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_NOTES_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_NOTES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}