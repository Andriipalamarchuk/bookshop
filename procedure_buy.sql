create or replace procedure buy
  (quantity_buy number, id_b number)
is
  error_quantity exception;
  quantity number;
begin
  select about.quantity 
  into quantity
  from about;
  if quantity-quantity_buy<0
    then
    raise error_quantity;
  else
    update about
    set quantity= quantity - quantity_buy 
    where id_books =  id_b;
  end if;
end buy;