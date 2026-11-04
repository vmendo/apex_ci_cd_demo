create index demo.eba_cust_users_acc_lvl_idx on
    demo.eba_cust_users (
        access_level_id
    );


-- sqlcl_snapshot {"hash":"1e57289a458d9413d1127654cf47e81fc5c0a0e3","type":"INDEX","name":"EBA_CUST_USERS_ACC_LVL_IDX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_USERS_ACC_LVL_IDX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_USERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCESS_LEVEL_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}