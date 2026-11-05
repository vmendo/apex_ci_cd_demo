alter table demo.eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk1
        foreign key ( activity_id )
            references demo.eba_cust_activities ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"7b6c45eed46d3b4a55bef4873e64ab02d9c32914","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITY_REF_FK1","schemaName":"DEMO","sxml":""}