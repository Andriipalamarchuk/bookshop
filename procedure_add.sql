create or replace procedure add_books
(quantity_add number, id_b number)
is
  quantity number;
begin
  update about
  set quantity= quantity + quantity_add 
  where id_books =  id_b;
end add_books;
