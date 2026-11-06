-- liquibase formatted sql
-- changeset DEMO:1793967273166 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_categories.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_categories.sql:null:b5319db4ab76bde324cd99e113c29b66751fa151:create

create table ${demo}.demo_trn_categories (
    id            number default ${demo}.demo_trn_categories_seq.nextval,
    category_name varchar2(100 byte)
        constraint demo_trn_categories_category_name_nn not null enable,
    description   varchar2(500 byte)
);

-- changeset DEMO:1793967273188 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_categories.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_categories.sql:null:3d8d89d4f7a7854ded55dbe0393a8afa598ba470:create

alter table ${demo}.demo_trn_categories
    add constraint demo_trn_categories_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793967273217 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_categories.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_categories.sql:null:81f9659eb576d0c0fcd756a9c2f43e0c6ba478fc:create

alter table ${demo}.demo_trn_categories add constraint demo_trn_categories_uq1 unique ( category_name )
    using index enable;

