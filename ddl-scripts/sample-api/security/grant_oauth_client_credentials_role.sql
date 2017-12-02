BEGIN
  OAUTH.grant_client_role(
    p_client_name => 'tech17demo_oauth_client_cred',
    p_role_name   => 'second_line_support'
  );

  COMMIT;
END;
/
