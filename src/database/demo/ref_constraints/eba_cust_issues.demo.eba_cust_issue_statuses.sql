alter table demo.eba_cust_issues
    add
        foreign key ( status_id )
            references demo.eba_cust_issue_statuses ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"38969035caed17f3ab351c032f57aacbd3bfe9f9","type":"REF_CONSTRAINT","name":"EBA_CUST_ISSUES.DEMO.EBA_CUST_ISSUE_STATUSES","schemaName":"DEMO","sxml":""}