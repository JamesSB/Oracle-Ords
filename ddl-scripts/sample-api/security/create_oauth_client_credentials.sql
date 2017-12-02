BEGIN
  OAUTH.create_client(
    p_name            => 'tech17demo_oauth_client_cred',
    p_grant_type      => 'client_credentials',
    p_owner           => 'lurodrig',
    p_description     => 'Luis client credentials for OAUTH2-ORDS tech17demo.',
    p_support_email   => 'luis.rodriguez.fernandez@cern.ch',
    p_privilege_names => '-'
  );
  COMMIT;

END;
/
