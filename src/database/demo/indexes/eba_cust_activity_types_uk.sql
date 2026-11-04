create unique index demo.eba_cust_activity_types_uk on
    demo.eba_cust_activity_types (
        name
    );


-- sqlcl_snapshot {"hash":"6cd09de71a580e6747bc930662bc1c25e9095d31","type":"INDEX","name":"EBA_CUST_ACTIVITY_TYPES_UK","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_TYPES_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_TYPES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}