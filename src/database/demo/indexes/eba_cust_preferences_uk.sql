create unique index demo.eba_cust_preferences_uk on
    demo.eba_cust_preferences (
        preference_name
    );


-- sqlcl_snapshot {"hash":"9c32c0235d24464aea6d8de6e2e99f12ccd3bbc2","type":"INDEX","name":"EBA_CUST_PREFERENCES_UK","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_PREFERENCES_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_PREFERENCES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PREFERENCE_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}