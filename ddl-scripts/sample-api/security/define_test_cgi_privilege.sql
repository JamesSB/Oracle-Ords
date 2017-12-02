DECLARE
  l_priv_roles owa.vc_arr;
  l_priv_modules owa.vc_arr;
  l_priv_patterns owa.vc_arr;
BEGIN
  l_priv_roles(1) := 'first_line_support';
  l_priv_modules(1) := 'test_cgi_module';

  ords.define_privilege(
    p_privilege_name     => 'test_cgi_module.privilege',
    p_roles              => l_priv_roles,
    p_patterns           => l_priv_patterns,
    p_modules            => l_priv_modules,
    p_label              => 'Test cgi',
    p_description        => 'Module for testing the REMOTE_USER header spoofing'
  );
  commit;
END;
/