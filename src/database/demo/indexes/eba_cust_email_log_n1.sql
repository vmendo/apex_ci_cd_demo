create index demo.eba_cust_email_log_n1 on
    demo.eba_cust_email_log (
        email_first_to
    );


-- sqlcl_snapshot {"hash":"763f4ed73a1cddb3454e6d31f79e76abca36fcf8","type":"INDEX","name":"EBA_CUST_EMAIL_LOG_N1","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_EMAIL_LOG_N1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_EMAIL_LOG</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMAIL_FIRST_TO</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}