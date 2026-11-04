create unique index demo.eba_cust_cust_compe_ref_u1 on
    demo.eba_cust_cust_competitor_ref (
        customer_id,
        competitor_id
    );


-- sqlcl_snapshot {"hash":"ff5acc6161c41b911055d5a7310adc8d74bee6a6","type":"INDEX","name":"EBA_CUST_CUST_COMPE_REF_U1","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_CUST_COMPE_REF_U1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_CUST_COMPETITOR_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COMPETITOR_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}