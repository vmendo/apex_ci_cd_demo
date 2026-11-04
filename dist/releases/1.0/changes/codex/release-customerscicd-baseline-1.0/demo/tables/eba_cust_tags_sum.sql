-- liquibase formatted sql
-- changeset DEMO:1793805258414 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_tags_sum.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tags_sum.sql:null:349ad0cbdcf2e57718ef7447db0d868cf8959717:create

create table ${demo}.eba_cust_tags_sum (
    tag       varchar2(255 byte),
    tag_count number
);

-- changeset DEMO:1793805258421 stripComments:false  logicalFilePath:codex/release-customerscicd-baseline-1.0/demo/tables/eba_cust_tags_sum.sql
-- sqlcl_snapshot src/database/demo/tables/eba_cust_tags_sum.sql:null:9b5900652e19942cd9c545c3aa9f13ad804cb790:create

alter table ${demo}.eba_cust_tags_sum
    add constraint eba_cust_tags_sum_pk primary key ( tag )
        using index enable;

