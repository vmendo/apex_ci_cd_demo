create sequence demo.demo_trn_courses_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20
noorder nocycle nokeep noscale global;


-- sqlcl_snapshot {"hash":"148eff96ce1c486d955e84a39d64b1538e3090b8","type":"SEQUENCE","name":"DEMO_TRN_COURSES_SEQ","schemaName":"DEMO","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_COURSES_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}