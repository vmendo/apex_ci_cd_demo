create unique index demo.eba_cust_acl_features_uk on
    demo.eba_cust_acl_features (
        authorization_name
    );


-- sqlcl_snapshot {"hash":"5674746d5a1e7ca0abbf22d6e4114903cae201d5","type":"INDEX","name":"EBA_CUST_ACL_FEATURES_UK","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_ACL_FEATURES_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_ACL_FEATURES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>AUTHORIZATION_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}