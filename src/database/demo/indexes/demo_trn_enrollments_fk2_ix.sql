create index demo.demo_trn_enrollments_fk2_ix on
    demo.demo_trn_enrollments (
        employee_id
    );


-- sqlcl_snapshot {"hash":"453375c92381c1ed2584ddcdab293b89a0a1db28","type":"INDEX","name":"DEMO_TRN_ENROLLMENTS_FK2_IX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_ENROLLMENTS_FK2_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>DEMO_TRN_ENROLLMENTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMPLOYEE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}