create unique index demo.eba_cust_access_levels_uk on
    demo.eba_cust_access_levels (
        access_level
    );


-- sqlcl_snapshot {"hash":"22c03d1a6b281a46a5ad117d37ab9ec1689bc4d2","type":"INDEX","name":"EBA_CUST_ACCESS_LEVELS_UK","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_ACCESS_LEVELS_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_ACCESS_LEVELS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCESS_LEVEL</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}