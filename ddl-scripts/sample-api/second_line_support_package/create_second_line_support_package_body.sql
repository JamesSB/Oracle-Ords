create or replace package body second_line_support as

  procedure create_customer(p_name in customer.name%type, 
                            p_lastname in customer.lastname%type,
                            p_financial_statement_status in customer.financial_statement_status%type,
                            p_comments in customer.comments%type) as
  begin
    insert into customer(name, lastname, financial_statement_status, comments)
    values(p_name, p_lastname, p_financial_statement_status, p_comments);
  end create_customer;
  
  procedure remove_customer(p_id in customer.id%type) as
  begin
    delete from customer where id =p_id;  
  end remove_customer;
  
  procedure update_customer(p_id in customer.id%type, 
                            p_name in customer.name%type, 
                            p_lastname in customer.lastname%type,
                            p_financial_statement_status in customer.financial_statement_status%type,
                            p_comments in customer.comments%type) as
  begin
    update customer
    set name = p_name,
        lastname = p_lastname,
        financial_statement_status = p_financial_statement_status,
        comments = p_comments
    where id = p_id;
  end update_customer;
                            
end second_line_support;
/
