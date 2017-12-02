create or replace package first_line_support is

  procedure create_customer(p_name IN customer.name%type, p_lastname IN customer.lastname%type);

  procedure remove_customer(p_id in customer.id%type);

  procedure update_customer(p_id in customer.id%type, p_name in customer.name%type, p_lastname in customer.lastname%type);

end first_line_support;
/
