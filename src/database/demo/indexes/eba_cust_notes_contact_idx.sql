create index demo.eba_cust_notes_contact_idx on
    demo.eba_cust_notes (
        contact_id
    );


-- sqlcl_snapshot {"hash":"28ce3693ff4e3cc14e04b554ffa9dcff0c8b2a2f","type":"INDEX","name":"EBA_CUST_NOTES_CONTACT_IDX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>EBA_CUST_NOTES_CONTACT_IDX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>EBA_CUST_NOTES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CONTACT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}