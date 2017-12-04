BEGIN
  OAUTH.create_client(
    p_name            => 'tech17demo_oauth_implicit',
    p_grant_type      => 'implicit',
    p_owner           => 'lurodrig',
    p_description     => 'Luis client credentials for OAUTH2-ORDS tech17demo.',
    p_redirect_uri    => 'http://localhost:8000/',
    p_support_email   => 'luis.rodriguez.fernandez@cern.ch',
    p_support_uri     => 'https://home.cern/',
    p_privilege_names => 'second_line_support.privilege'
  );
  COMMIT;

END;
/
