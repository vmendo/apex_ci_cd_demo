create index demo.eba_cust_clicks_idx2 on
    demo.eba_cust_clicks ( sys_extract_utc(view_timestamp) );


-- sqlcl_snapshot {"hash":"26ee4329f99fdc5d573cead0b14db4d809daab1e","type":"INDEX","name":"EBA_CUST_CLICKS_IDX2","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_CLICKS_IDX2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_CLICKS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>SYS_EXTRACT_UTC(\"VIEW_TIMESTAMP\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}