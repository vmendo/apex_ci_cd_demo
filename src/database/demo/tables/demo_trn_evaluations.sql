create table demo.demo_trn_evaluations (
    id            number default demo.demo_trn_evaluations_seq.nextval,
    enrollment_id number
        constraint demo_trn_evaluations_enrollment_id_nn not null enable,
    score         number(1, 0)
        constraint demo_trn_evaluations_score_nn not null enable,
    comments      varchar2(1000 byte),
    submitted_at  date default sysdate
        constraint demo_trn_evaluations_submitted_at_nn not null enable
);

alter table demo.demo_trn_evaluations
    add constraint demo_trn_evaluations_pk primary key ( id )
        using index enable;

alter table demo.demo_trn_evaluations
    add constraint demo_trn_evaluations_score_ck check ( score between 1 and 5 ) enable;

alter table demo.demo_trn_evaluations add constraint demo_trn_evaluations_uq1 unique ( enrollment_id )
    using index enable;


-- sqlcl_snapshot {"hash":"254b49eadb1473b5a44060da7f7645c9a2284044","type":"TABLE","name":"DEMO_TRN_EVALUATIONS","schemaName":"DEMO","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_EVALUATIONS</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <DEFAULT>\"DEMO\".\"DEMO_TRN_EVALUATIONS_SEQ\".\"NEXTVAL\"</DEFAULT>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>ENROLLMENT_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EVALUATIONS_ENROLLMENT_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>SCORE</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>1</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EVALUATIONS_SCORE_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COMMENTS</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>1000</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>SUBMITTED_AT</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <DEFAULT>SYSDATE</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EVALUATIONS_SUBMITTED_AT_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <CHECK_CONSTRAINT_LIST>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_EVALUATIONS_SCORE_CK</NAME>\n            <CONDITION>SCORE BETWEEN 1 AND 5</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n      </CHECK_CONSTRAINT_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_EVALUATIONS_PK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <UNIQUE_KEY_CONSTRAINT_LIST>\n         <UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_EVALUATIONS_UQ1</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>ENROLLMENT_ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n      </UNIQUE_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}