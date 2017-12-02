BEGIN
  ORDS.create_role(p_role_name => 'second_line_support');
  COMMIT;
END;
/