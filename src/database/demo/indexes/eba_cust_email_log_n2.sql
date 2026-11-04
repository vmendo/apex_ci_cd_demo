create index demo.eba_cust_email_log_n2 on
    demo.eba_cust_email_log (
        email_from
    );


-- sqlcl_snapshot {"hash":"5b1ca243b81306cd7e70d38be34ef993f02c4bc1","type":"INDEX","name":"EBA_CUST_EMAIL_LOG_N2","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_EMAIL_LOG_N2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_EMAIL_LOG</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMAIL_FROM</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}