create or replace package second_line_support is
  
  procedure create_customer(p_name in customer.name%type, 
                            p_lastname in customer.lastname%type,
                            p_financial_statement_status in customer.financial_statement_status%type,
                            p_comments in customer.comments%type);
                            
  procedure remove_customer(p_id in customer.id%type);
  
  procedure update_customer(p_id in customer.id%type, 
                            p_name in customer.name%type, 
                            p_lastname in customer.lastname%type,
                            p_financial_statement_status in customer.financial_statement_status%type,
                            p_comments in customer.comments%type);
  
end second_line_support;
/