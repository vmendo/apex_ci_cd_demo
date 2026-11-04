create unique index demo.eba_cust_prod_families_uk on
    demo.eba_cust_product_families (
        name
    );


-- sqlcl_snapshot {"hash":"3a9b30652a1e2409a4bdf4c9b21884fb7a4e1ac1","type":"INDEX","name":"EBA_CUST_PROD_FAMILIES_UK","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_PROD_FAMILIES_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_PRODUCT_FAMILIES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}