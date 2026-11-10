create index demo.demo_trn_certifications_fk2_ix on
    demo.demo_trn_certifications (
        course_id
    );


-- sqlcl_snapshot {"hash":"95422fe70f9f2fdc08012d4e335bae93d3c506ea","type":"INDEX","name":"DEMO_TRN_CERTIFICATIONS_FK2_IX","schemaName":"DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_CERTIFICATIONS_FK2_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO</SCHEMA>\n         <NAME>DEMO_TRN_CERTIFICATIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>COURSE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}