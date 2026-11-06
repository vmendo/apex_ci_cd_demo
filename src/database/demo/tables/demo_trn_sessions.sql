create table demo.demo_trn_sessions (
    id            number default demo.demo_trn_sessions_seq.nextval,
    course_id     number
        constraint demo_trn_sessions_course_id_nn not null enable,
    instructor_id number
        constraint demo_trn_sessions_instructor_id_nn not null enable,
    room_id       number
        constraint demo_trn_sessions_room_id_nn not null enable,
    session_code  varchar2(30 byte)
        constraint demo_trn_sessions_session_code_nn not null enable,
    start_date    date
        constraint demo_trn_sessions_start_date_nn not null enable,
    end_date      date
        constraint demo_trn_sessions_end_date_nn not null enable,
    capacity      number(4, 0)
        constraint demo_trn_sessions_capacity_nn not null enable,
    status        varchar2(20 byte) default 'SCHEDULED'
        constraint demo_trn_sessions_status_nn not null enable
);

alter table demo.demo_trn_sessions
    add constraint demo_trn_sessions_capacity_ck check ( capacity between 1 and 500 ) enable;

alter table demo.demo_trn_sessions add constraint demo_trn_sessions_dates_ck check ( end_date > start_date ) enable;

alter table demo.demo_trn_sessions
    add constraint demo_trn_sessions_pk primary key ( id )
        using index enable;

alter table demo.demo_trn_sessions
    add constraint demo_trn_sessions_status_ck
        check ( status in ( 'SCHEDULED', 'COMPLETED', 'CANCELLED' ) ) enable;

alter table demo.demo_trn_sessions add constraint demo_trn_sessions_uq1 unique ( session_code )
    using index enable;


-- sqlcl_snapshot {"hash":"17f212d4445356c3a460775ea7d249372838fe30","type":"TABLE","name":"DEMO_TRN_SESSIONS","schemaName":"DEMO","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_SESSIONS</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <DEFAULT>\"DEMO\".\"DEMO_TRN_SESSIONS_SEQ\".\"NEXTVAL\"</DEFAULT>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COURSE_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_SESSIONS_COURSE_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>INSTRUCTOR_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_SESSIONS_INSTRUCTOR_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>ROOM_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_SESSIONS_ROOM_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>SESSION_CODE</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>30</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_SESSIONS_SESSION_CODE_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>START_DATE</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_SESSIONS_START_DATE_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>END_DATE</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_SESSIONS_END_DATE_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>CAPACITY</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>4</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_SESSIONS_CAPACITY_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>STATUS</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>20</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <DEFAULT>'SCHEDULED'</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_SESSIONS_STATUS_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <CHECK_CONSTRAINT_LIST>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_SESSIONS_DATES_CK</NAME>\n            <CONDITION>END_DATE > START_DATE</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_SESSIONS_CAPACITY_CK</NAME>\n            <CONDITION>CAPACITY BETWEEN 1 AND 500</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_SESSIONS_STATUS_CK</NAME>\n            <CONDITION>STATUS IN ('SCHEDULED','COMPLETED','CANCELLED')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n      </CHECK_CONSTRAINT_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_SESSIONS_PK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <UNIQUE_KEY_CONSTRAINT_LIST>\n         <UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_SESSIONS_UQ1</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>SESSION_CODE</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n      </UNIQUE_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}