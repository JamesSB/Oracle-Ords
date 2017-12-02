BEGIN
  ORDS.create_role(p_role_name => 'oauth_client_credentials_role');
  COMMIT;
END;
/
