create or replace package body first_line_support as

  procedure create_customer(p_name in customer.name%type, p_lastname in customer.lastname%type) as
  begin
    dbms_output.enable();
    dbms_output.put_line('New customer: ' || p_name || ' ' || p_lastname);
    insert into customer( name, lastname)
    values(p_name, p_lastname);
  end create_customer;
  
  procedure remove_customer(p_id in customer.id%type) as
  v_status customer.financial_statement_status%type;
  v_remote_user varchar(32);
  begin
    dbms_output.enable();
    select financial_statement_status into v_status from customer where id = p_id;
    dbms_output.put_line('FINANCIAL_STATEMENT_STATUS of customer with id ' || p_id || ' is ' || v_status);
    if (v_status is NULL or v_status != 'RED') then
       dbms_output.put_line('FINANCIAL_STATEMENT_STATUS of customer is not RED, delete it');
       delete from customer where id =p_id;
    else
      dbms_output.put_line('FIRST_LINE_SUPPORT users can not delete customers with FINANCIAL_STATEMENT_STATUS in RED');
    end if;
    exception
      when no_data_found then
        dbms_output.put_line('ERROR: No customer with id ' || p_id);  
  end remove_customer;
  
  procedure update_customer(p_id in customer.id%type,
                            p_name in customer.name%type,
                            p_lastname in customer.lastname%type) as
  begin
    update customer
    set name = p_name,
        lastname = p_lastname
    where id = p_id;
  end update_customer;
                            
end first_line_support;
/
