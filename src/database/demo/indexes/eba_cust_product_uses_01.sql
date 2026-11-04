create index demo.eba_cust_product_uses_01 on
    demo.eba_cust_product_uses (
        customer_id
    );


-- sqlcl_snapshot {"hash":"3ae60022c7b78c1288d521862ae3642bd7cfc81e","type":"INDEX","name":"EBA_CUST_PRODUCT_USES_01","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_PRODUCT_USES_01</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_PRODUCT_USES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}