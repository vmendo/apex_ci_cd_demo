create unique index demo.eba_cust_impl_partners_uk on
    demo.eba_cust_impl_partners (
        name
    );


-- sqlcl_snapshot {"hash":"dbfdc1bcc4b06b49d6f78ef4b81ee196306d89ee","type":"INDEX","name":"EBA_CUST_IMPL_PARTNERS_UK","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_IMPL_PARTNERS_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_IMPL_PARTNERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}