create unique index demo.eba_cust_countries_i1 on
    demo.eba_cust_countries (
        country_code
    );


-- sqlcl_snapshot {"hash":"5e96c244d1fb69a957df8a36d504cd4b946f50de","type":"INDEX","name":"EBA_CUST_COUNTRIES_I1","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_COUNTRIES_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_COUNTRIES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>COUNTRY_CODE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}