create table demo.demo_trn_employees (
    id              number default demo.demo_trn_employees_seq.nextval,
    department_id   number
        constraint demo_trn_employees_department_id_nn not null enable,
    employee_number varchar2(20 byte)
        constraint demo_trn_employees_employee_number_nn not null enable,
    first_name      varchar2(100 byte)
        constraint demo_trn_employees_first_name_nn not null enable,
    last_name       varchar2(100 byte)
        constraint demo_trn_employees_last_name_nn not null enable,
    email           varchar2(255 byte)
        constraint demo_trn_employees_email_nn not null enable,
    hire_date       date
        constraint demo_trn_employees_hire_date_nn not null enable,
    status          varchar2(20 byte) default 'ACTIVE'
        constraint demo_trn_employees_status_nn not null enable
);

alter table demo.demo_trn_employees
    add constraint demo_trn_employees_pk primary key ( id )
        using index enable;

alter table demo.demo_trn_employees
    add constraint demo_trn_employees_status_ck
        check ( status in ( 'ACTIVE', 'INACTIVE' ) ) enable;

alter table demo.demo_trn_employees add constraint demo_trn_employees_uq1 unique ( employee_number )
    using index enable;

alter table demo.demo_trn_employees add constraint demo_trn_employees_uq2 unique ( email )
    using index enable;


-- sqlcl_snapshot {"hash":"ec8aaed012cdb4556547dd9fa94bb23de98b9fa5","type":"TABLE","name":"DEMO_TRN_EMPLOYEES","schemaName":"DEMO","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO</SCHEMA>\n   <NAME>DEMO_TRN_EMPLOYEES</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <DEFAULT>\"DEMO\".\"DEMO_TRN_EMPLOYEES_SEQ\".\"NEXTVAL\"</DEFAULT>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>DEPARTMENT_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EMPLOYEES_DEPARTMENT_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>EMPLOYEE_NUMBER</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>20</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EMPLOYEES_EMPLOYEE_NUMBER_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>FIRST_NAME</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>100</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EMPLOYEES_FIRST_NAME_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LAST_NAME</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>100</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EMPLOYEES_LAST_NAME_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>EMAIL</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>255</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EMPLOYEES_EMAIL_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>HIRE_DATE</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EMPLOYEES_HIRE_DATE_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>STATUS</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>20</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <DEFAULT>'ACTIVE'</DEFAULT>\n            <NOT_NULL>\n               <NAME>DEMO_TRN_EMPLOYEES_STATUS_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <CHECK_CONSTRAINT_LIST>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_EMPLOYEES_STATUS_CK</NAME>\n            <CONDITION>STATUS IN ('ACTIVE','INACTIVE')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n      </CHECK_CONSTRAINT_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_EMPLOYEES_PK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <UNIQUE_KEY_CONSTRAINT_LIST>\n         <UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_EMPLOYEES_UQ1</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>EMPLOYEE_NUMBER</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n         <UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>DEMO_TRN_EMPLOYEES_UQ2</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>EMAIL</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </UNIQUE_KEY_CONSTRAINT_LIST_ITEM>\n      </UNIQUE_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}