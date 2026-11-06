create index demo.demo_trn_employees_fk1_ix on
    demo.demo_trn_employees (
        department_id
    );


-- sqlcl_snapshot {"hash":"6b299dea8cf031eae431853f89f7d2019653bd07","type":"INDEX","name":"DEMO_TRN_EMPLOYEES_FK1_IX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_EMPLOYEES_FK1_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>DEMO_TRN_EMPLOYEES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>DEPARTMENT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}