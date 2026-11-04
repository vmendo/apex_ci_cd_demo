-- liquibase formatted sql
-- changeset DEMO:1793805472081 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_tags_type_sum.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tags_type_sum.sql:null:089eb7a3ccc99123bf5d282346d0dddc5ccd7ae0:create

create table ${demo}.eba_cust_tags_type_sum (
    tag          varchar2(255 byte),
    content_type varchar2(30 byte),
    tag_count    number
);

-- changeset DEMO:1793805472114 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/tables/eba_cust_tags_type_sum.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tags_type_sum.sql:null:e099e0b2a46466a55fecddcb3baa629e742e3074:create

alter table ${demo}.eba_cust_tags_type_sum
    add constraint eba_cust_tags_type_sum_pk primary key ( tag,
                                                           content_type )
        using index enable;

