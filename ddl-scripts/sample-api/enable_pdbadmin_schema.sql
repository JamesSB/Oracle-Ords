BEGIN
  ORDS.enable_schema(
    p_enabled             => TRUE,
    p_schema              => 'PDBADMIN',
    p_url_mapping_type    => 'BASE_PATH',
    p_url_mapping_pattern => 'pdbadmin',
    p_auto_rest_auth      => FALSE
  );
    
  COMMIT;
END;
/

