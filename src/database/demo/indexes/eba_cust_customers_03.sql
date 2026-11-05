create index demo.eba_cust_customers_03 on
    demo.eba_cust_customers (
        status_id
    );


-- sqlcl_snapshot {"hash":"c82380cfe4d675c3b191eb85c8e9055f97d0ec2f","type":"INDEX","name":"EBA_CUST_CUSTOMERS_03","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_CUSTOMERS_03</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_CUSTOMERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>STATUS_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}