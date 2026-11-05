-- liquibase formatted sql
-- changeset DEMO:1793874438084 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_clicks_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_clicks_biu.sql:null:ecf0c8fcc07345aa7e93baccac352d7cd1c7275b:create

create or replace editionable trigger ${demo}.eba_cust_clicks_biu before
    insert on ${demo}.eba_cust_clicks
    for each row
begin
    if :new.id is null then
        :new.id := eba_cust_seq.nextval;
    end if;

    :new.view_timestamp := current_timestamp;
    :new.app_username := nvl(
        v('APP_USER'),
        user
    );
    :new.app_session := v('APP_SESSION');
end;
/

-- changeset DEMO:1793874438110 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/triggers/eba_cust_clicks_biu.sql
-- sqlcl_snapshot src/database/demo/triggers/eba_cust_clicks_biu.sql:null:f3c1219ad08c4037c8296c9076164706cb3ba336:create

alter trigger ${demo}.eba_cust_clicks_biu enable;

