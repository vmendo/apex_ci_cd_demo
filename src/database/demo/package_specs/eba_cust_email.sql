create or replace package demo.eba_cust_email as
    procedure send_feedback_email (
        p_app_id        in number,
        p_page_id       in number,
        p_submitter     in varchar2,
        p_feedback_type in varchar2,
        p_feedback      in varchar2
    );

end eba_cust_email;
/


-- sqlcl_snapshot {"hash":"0fbed39cd2b2541dac36469db032b8e940fdcff3","type":"PACKAGE_SPEC","name":"EBA_CUST_EMAIL","schemaName":"DEMO","sxml":""}