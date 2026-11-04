create unique index demo.eba_cust_cust_partner_ref_u1 on
    demo.eba_cust_cust_partner_ref (
        customer_id,
        partner_id
    );


-- sqlcl_snapshot {"hash":"3a00df07e6ea0e4c834d6580cd8d8e6a00c75a63","type":"INDEX","name":"EBA_CUST_CUST_PARTNER_REF_U1","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_CUST_PARTNER_REF_U1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_CUST_PARTNER_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>PARTNER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}