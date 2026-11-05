create index demo.eba_cust_customers_07 on
    demo.eba_cust_customers (
        parent_customer_id
    );


-- sqlcl_snapshot {"hash":"5bac337ebee3b3f9d640e332cb2be7383ac2c894","type":"INDEX","name":"EBA_CUST_CUSTOMERS_07","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_CUSTOMERS_07</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_CUSTOMERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PARENT_CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}