BEGIN
  ORDS.define_module(
    p_module_name    => 'test_cgi_module',
    p_base_path      => 'tech17demo/test_cgi/',
    p_items_per_page => 0);
  
  ORDS.define_template(
   p_module_name    => 'test_cgi_module',
   p_pattern        => 'cgi/print_cgi_env');

  ORDS.define_handler(
    p_module_name    => 'test_cgi_module',
    p_pattern        => 'cgi/print_cgi_env',
    p_method         => 'GET',
    p_source_type    => ORDS.source_type_plsql,
    p_source         => 'BEGIN
                           SYS.OWA_UTIL.PRINT_CGI_ENV();  
                         END;',
    p_items_per_page => 0);
         
  COMMIT;
END;
/