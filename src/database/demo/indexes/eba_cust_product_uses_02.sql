create index demo.eba_cust_product_uses_02 on
    demo.eba_cust_product_uses (
        product_id
    );


-- sqlcl_snapshot {"hash":"2ea4e09948e43204fb27150c1966e35d40ede194","type":"INDEX","name":"EBA_CUST_PRODUCT_USES_02","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_PRODUCT_USES_02</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_PRODUCT_USES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PRODUCT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}