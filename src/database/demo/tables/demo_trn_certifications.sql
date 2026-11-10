create table demo.demo_trn_certifications (
    id               number default demo.demo_trn_certifications_seq.nextval,
    employee_id      number
        constraint demo_trn_certifications_employee_id_nn not null enable,
    course_id        number
        constraint demo_trn_certifications_course_id_nn not null enable,
    certificate_code varchar2(40 byte)
        constraint demo_trn_certifications_certificate_code_nn not null enable,
    issued_on        date default trunc(sysdate)
        constraint demo_trn_certifications_issued_on_nn not null enable,
    expires_on       date,
    status           varchar2(20 byte) default 'VALID'
        constraint demo_trn_certifications_status_nn not null enable,
    notes            varchar2(1000 byte)
);

alter table demo.demo_trn_certifications
    add constraint demo_trn_certifications_dates_ck
        check ( expires_on is null
                or expires_on >= issued_on ) enable;

alter table demo.demo_trn_certifications
    add constraint demo_trn_certifications_pk primary key ( id )
        using index enable;

alter table demo.demo_trn_certifications
    add constraint demo_trn_certifications_status_ck
        check ( status in ( 'VALID', 'EXPIRED', 'REVOKED' ) ) enable;

alter table demo.demo_trn_certifications add constraint demo_trn_certifications_uq1 unique ( certificate_code )
    using index enable;


-- sqlcl_snapshot {"hash":"84bf653378bfb8db02eedf61ac890816f3f34183","type":"TABLE","name":"DEMO_TRN_CERTIFICATIONS","schemaName":"DEMO","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_CERTIFICATIONS</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <DEFAULT>\"DEMO\".DEMO_TRN_CERTIFICATIONS_SEQ.nextval</DEFAULT>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>EMPLOYEE_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_CERTIFICATIONS_EMPLOYEE_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COURSE_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_CERTIFICATIONS_COURSE_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>CERTIFICATE_CODE</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>40</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_CERTIFICATIONS_CERTIFICATE_CODE_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>ISSUED_ON</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <DEFAULT>trunc(sysdate)</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_CERTIFICATIONS_ISSUED_ON_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>EXPIRES_ON</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>STATUS</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>20</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <DEFAULT>'VALID'</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_CERTIFICATIONS_STATUS_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>NOTES</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>1000</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <CHECK_CONSTRAINT_LIST>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_CERTIFICATIONS_DATES_CK</NAME>\n            <CONDITION>EXPIRES_ON is null or EXPIRES_ON >= ISSUED_ON</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_CERTIFICATIONS_STATUS_CK</NAME>\n            <CONDITION>STATUS in ('VALID', 'EXPIRED', 'REVOKED')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n      </CHECK_CONSTRAINT_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_CERTIFICATIONS_PK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <UNIQUE_KEY_CONSTRAINT_LIST>\n         <UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_CERTIFICATIONS_UQ1</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>CERTIFICATE_CODE</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n      </UNIQUE_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}