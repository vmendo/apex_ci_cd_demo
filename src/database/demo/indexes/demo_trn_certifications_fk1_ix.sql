create index demo.demo_trn_certifications_fk1_ix on
    demo.demo_trn_certifications (
        employee_id
    );


-- sqlcl_snapshot {"hash":"9a246913ba3a24698db5039094748bb795498b10","type":"INDEX","name":"DEMO_TRN_CERTIFICATIONS_FK1_IX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_CERTIFICATIONS_FK1_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>DEMO_TRN_CERTIFICATIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMPLOYEE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}