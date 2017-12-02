BEGIN
  ORDS.define_module(
    p_module_name    => 'fls_module',
    p_base_path      => 'tech17demo/first_line_support/',
    p_items_per_page => 0);
  
  ORDS.define_template(
   p_module_name    => 'fls_module',
   p_pattern        => 'customer/');

  ORDS.define_handler(
    p_module_name    => 'fls_module',
    p_pattern        => 'customer/',
    p_method         => 'GET',
    p_source_type    => ORDS.source_type_collection_feed,
    p_source         => 'SELECT id, name, lastname FROM customer',
    p_items_per_page => 0);
    
  ORDS.define_template(
   p_module_name    => 'fls_module',
   p_pattern        => 'customer/:id');

  ORDS.define_handler(
    p_module_name    => 'fls_module',
    p_pattern        => 'customer/:id',
    p_method         => 'GET',
    p_source_type    => ORDS.source_type_collection_item,
    p_source         => 'SELECT id, name, lastname FROM customer WHERE id = :id',
    p_items_per_page => 0);
  
  ORDS.define_handler(
    p_module_name    => 'fls_module',
    p_pattern        => 'customer/',
    p_method         => 'POST',
    p_source_type    => ORDS.source_type_plsql,
    p_source         => 'BEGIN
                           first_line_support.create_customer(p_name => :name, p_lastname => :lastname);
                         END;',
    p_items_per_page => 0);
    
  ORDS.define_handler(
    p_module_name    => 'fls_module',
    p_pattern        => 'customer/',
    p_method         => 'PUT',
    p_source_type    => ORDS.source_type_plsql,
    p_source         => 'BEGIN
                           first_line_support.update_customer(p_id => :id, p_name => :name, p_lastname => :lastname);
                         END;',
    p_items_per_page => 0);
    
  ORDS.define_handler(
    p_module_name    => 'fls_module',
    p_pattern        => 'customer/:id',
    p_method         => 'DELETE',
    p_source_type    => ORDS.source_type_plsql,
    p_source         => 'BEGIN
                           first_line_support.remove_customer(p_id => :id);
                         END;',
    p_items_per_page => 0);
      
  COMMIT;
END;
/