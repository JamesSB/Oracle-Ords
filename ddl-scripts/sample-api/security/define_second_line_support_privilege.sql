DECLARE
  l_priv_roles owa.vc_arr;
  l_priv_modules owa.vc_arr;
  l_priv_patterns owa.vc_arr;
BEGIN
  l_priv_roles(1) := 'second_line_support';
  l_priv_modules(1) := 'sls_module';

  ords.define_privilege(
    p_privilege_name     => 'second_line_support.privilege',
    p_roles              => l_priv_roles,
    p_patterns           => l_priv_patterns,
    p_modules            => l_priv_modules,
    p_label              => 'Second Line support users',
    p_description        => 'Users with this privilege can fully manage customers'
  );
  commit;
END;
/
