
--
        
DECLARE

  l_roles     OWA.VC_ARR;
  l_modules   OWA.VC_ARR;
  l_patterns  OWA.VC_ARR;

BEGIN
  ORDS.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'demo',
      p_auto_rest_auth      => TRUE);

  ORDS.CREATE_ROLE(
      p_role_name=> 'oracle.dbtools.role.autorest.DEMO');
  ORDS.CREATE_ROLE(
      p_role_name=> 'oracle.dbtools.role.autorest.any.DEMO');
  l_roles(1) := 'oracle.dbtools.autorest.any.schema';
  l_roles(2) := 'oracle.dbtools.role.autorest.DEMO';
  l_patterns(1) := '/metadata-catalog/*';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'oracle.dbtools.autorest.privilege.DEMO',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => 'DEMO metadata-catalog access',
      p_description    => 'Provides access to the metadata catalog of the objects in the DEMO schema.',
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  l_roles(1) := 'SODA Developer';
  l_patterns(1) := '/soda/*';

  ORDS.DEFINE_PRIVILEGE(
      p_privilege_name => 'oracle.soda.privilege.developer',
      p_roles          => l_roles,
      p_patterns       => l_patterns,
      p_modules        => l_modules,
      p_label          => NULL,
      p_description    => NULL,
      p_comments       => NULL); 

  l_roles.DELETE;
  l_modules.DELETE;
  l_patterns.DELETE;

  ORDS.FINALIZE_IMPORT(
      p_prune => FALSE,
      p_objects => null);

COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;

END;
/


-- sqlcl_snapshot {"hash":"566765a4748b1693ff57ed1b98f0ba4e0f8b681f","type":"ORDS_SCHEMA","name":"ords","schemaName":"DEMO","sxml":""}