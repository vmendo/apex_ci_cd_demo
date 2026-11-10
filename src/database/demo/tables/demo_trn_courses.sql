create table demo.demo_trn_courses (
    id                     number default demo.demo_trn_courses_seq.nextval,
    category_id            number
        constraint demo_trn_courses_category_id_nn not null enable,
    course_code            varchar2(20 byte)
        constraint demo_trn_courses_course_code_nn not null enable,
    course_name            varchar2(200 byte)
        constraint demo_trn_courses_course_name_nn not null enable,
    description            varchar2(1000 byte),
    duration_hours         number(4, 1)
        constraint demo_trn_courses_duration_hours_nn not null enable,
    course_fee             number(10, 2) default 0
        constraint demo_trn_courses_course_fee_nn not null enable,
    status                 varchar2(20 byte) default 'ACTIVE'
        constraint demo_trn_courses_status_nn not null enable,
    certification_required varchar2(1 byte) default 'N'
        constraint demo_trn_courses_cert_req_nn not null enable
);

alter table demo.demo_trn_courses
    add constraint demo_trn_courses_cert_req_ck
        check ( certification_required in ( 'Y', 'N' ) ) enable;

alter table demo.demo_trn_courses
    add constraint demo_trn_courses_duration_ck
        check ( duration_hours > 0
                and duration_hours <= 80 ) enable;

alter table demo.demo_trn_courses
    add constraint demo_trn_courses_fee_ck check ( course_fee >= 0 ) enable;

alter table demo.demo_trn_courses
    add constraint demo_trn_courses_pk primary key ( id )
        using index enable;

alter table demo.demo_trn_courses
    add constraint demo_trn_courses_status_ck
        check ( status in ( 'ACTIVE', 'RETIRED' ) ) enable;

alter table demo.demo_trn_courses add constraint demo_trn_courses_uq1 unique ( course_code )
    using index enable;


-- sqlcl_snapshot {"hash":"d16011525d9e4bd6c5a6203321af385bdb3e0f86","type":"TABLE","name":"DEMO_TRN_COURSES","schemaName":"DEMO","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_COURSES</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <DEFAULT>\"DEMO\".\"DEMO_TRN_COURSES_SEQ\".\"NEXTVAL\"</DEFAULT>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>CATEGORY_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_COURSES_CATEGORY_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COURSE_CODE</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>20</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_COURSES_COURSE_CODE_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COURSE_NAME</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>200</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_COURSES_COURSE_NAME_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>DESCRIPTION</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>1000</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>DURATION_HOURS</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>4</PRECISION>\n            <SCALE>1</SCALE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_COURSES_DURATION_HOURS_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COURSE_FEE</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>10</PRECISION>\n            <SCALE>2</SCALE>\n            <DEFAULT>0</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_COURSES_COURSE_FEE_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>STATUS</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>20</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <DEFAULT>'ACTIVE'</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_COURSES_STATUS_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>CERTIFICATION_REQUIRED</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>1</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <DEFAULT>'N'</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_COURSES_CERT_REQ_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <CHECK_CONSTRAINT_LIST>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_COURSES_CERT_REQ_CK</NAME>\n            <CONDITION>CERTIFICATION_REQUIRED in ('Y', 'N')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_COURSES_DURATION_CK</NAME>\n            <CONDITION>DURATION_HOURS > 0 AND DURATION_HOURS &#60;= 80</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_COURSES_FEE_CK</NAME>\n            <CONDITION>COURSE_FEE >= 0</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_COURSES_STATUS_CK</NAME>\n            <CONDITION>STATUS IN ('ACTIVE','RETIRED')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n      </CHECK_CONSTRAINT_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_COURSES_PK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <UNIQUE_KEY_CONSTRAINT_LIST>\n         <UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_COURSES_UQ1</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>COURSE_CODE</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n      </UNIQUE_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}