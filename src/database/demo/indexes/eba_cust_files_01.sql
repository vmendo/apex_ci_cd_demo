create index demo.eba_cust_files_01 on
    demo.eba_cust_files (
        customer_id
    );


-- sqlcl_snapshot {"hash":"495109a784eed7b371b6618bc23bb9d60c486946","type":"INDEX","name":"EBA_CUST_FILES_01","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_FILES_01</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_FILES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}