create index demo.eba_cust_customers_04 on
    demo.eba_cust_customers (
        geography_id,
        country_id
    );


-- sqlcl_snapshot {"hash":"6b3c945d8fd9881028d98a13b24e5ca69d2d3949","type":"INDEX","name":"EBA_CUST_CUSTOMERS_04","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_CUSTOMERS_04</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_CUSTOMERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>GEOGRAPHY_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COUNTRY_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}