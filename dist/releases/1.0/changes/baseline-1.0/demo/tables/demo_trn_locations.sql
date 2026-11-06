-- liquibase formatted sql
-- changeset DEMO:1793967273290 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_locations.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_locations.sql:null:83718d5563444fbc5143521c36eb2c73205c3a0b:create

create table ${demo}.demo_trn_locations (
    id            number default ${demo}.demo_trn_locations_seq.nextval,
    location_name varchar2(100 byte)
        constraint demo_trn_locations_location_name_nn not null enable,
    city          varchar2(100 byte)
        constraint demo_trn_locations_city_nn not null enable,
    country       varchar2(100 byte)
        constraint demo_trn_locations_country_nn not null enable
);

-- changeset DEMO:1793967273335 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_locations.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_locations.sql:null:d64e41dec8bb3efd8ae050ae1a2e0efa1a5d98e2:create

alter table ${demo}.demo_trn_locations
    add constraint demo_trn_locations_pk primary key ( id )
        using index enable;

-- changeset DEMO:1793967273363 stripComments:false  logicalFilePath:baseline-1.0/demo/tables/demo_trn_locations.sql
-- sqlcl_snapshot src/database/demo/tables/demo_trn_locations.sql:null:44269b3d89ee55feea2627cdf2d853fc04504e1e:create

alter table ${demo}.demo_trn_locations add constraint demo_trn_locations_uq1 unique ( location_name )
    using index enable;

