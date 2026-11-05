create table demo.demo_trn_enrollments (
    id          number default demo.demo_trn_enrollments_seq.nextval,
    session_id  number
        constraint demo_trn_enrollments_session_id_nn not null enable,
    employee_id number
        constraint demo_trn_enrollments_employee_id_nn not null enable,
    enrolled_at date default sysdate
        constraint demo_trn_enrollments_enrolled_at_nn not null enable,
    status      varchar2(20 byte) default 'ENROLLED'
        constraint demo_trn_enrollments_status_nn not null enable
);

alter table demo.demo_trn_enrollments
    add constraint demo_trn_enrollments_pk primary key ( id )
        using index enable;

alter table demo.demo_trn_enrollments
    add constraint demo_trn_enrollments_status_ck
        check ( status in ( 'ENROLLED', 'COMPLETED', 'CANCELLED' ) ) enable;

alter table demo.demo_trn_enrollments
    add constraint demo_trn_enrollments_uq1 unique ( session_id,
                                                     employee_id )
        using index enable;


-- sqlcl_snapshot {"hash":"b0de2518fe23970d8439ba7460a7299eb5b11bc2","type":"TABLE","name":"DEMO_TRN_ENROLLMENTS","schemaName":"DEMO","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_ENROLLMENTS</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <DEFAULT>\"DEMO\".\"DEMO_TRN_ENROLLMENTS_SEQ\".\"NEXTVAL\"</DEFAULT>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>SESSION_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_ENROLLMENTS_SESSION_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>EMPLOYEE_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_ENROLLMENTS_EMPLOYEE_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>ENROLLED_AT</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <DEFAULT>SYSDATE</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_ENROLLMENTS_ENROLLED_AT_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>STATUS</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>20</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <DEFAULT>'ENROLLED'</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_ENROLLMENTS_STATUS_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <CHECK_CONSTRAINT_LIST>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_ENROLLMENTS_STATUS_CK</NAME>\n            <CONDITION>STATUS IN ('ENROLLED','COMPLETED','CANCELLED')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n      </CHECK_CONSTRAINT_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_ENROLLMENTS_PK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <UNIQUE_KEY_CONSTRAINT_LIST>\n         <UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_ENROLLMENTS_UQ1</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>SESSION_ID</NAME>\n               </COL_LIST_ITEM>\n               <COL_LIST_ITEM>\n                  <NAME>EMPLOYEE_ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n      </UNIQUE_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}