create index demo.eba_cust_customers_02 on
    demo.eba_cust_customers (
        category_id
    );


-- sqlcl_snapshot {"hash":"2dacca0a53ad73e7560480cd0a10576e245a78c9","type":"INDEX","name":"EBA_CUST_CUSTOMERS_02","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_CUSTOMERS_02</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_CUSTOMERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CATEGORY_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}