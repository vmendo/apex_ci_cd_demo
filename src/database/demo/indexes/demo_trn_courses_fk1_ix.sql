create index demo.demo_trn_courses_fk1_ix on
    demo.demo_trn_courses (
        category_id
    );


-- sqlcl_snapshot {"hash":"2135575918cdd2c213f3faa9e662d7cfe863e22f","type":"INDEX","name":"DEMO_TRN_COURSES_FK1_IX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_COURSES_FK1_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>DEMO_TRN_COURSES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CATEGORY_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}