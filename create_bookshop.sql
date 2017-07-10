alter session set "_ORACLE_SCRIPT"=true;
create user bookshop identified by pass;
grant connect to bookshop ;
grant create table to bookshop ;
grant create procedure to bookshop ;
grant create sequence to bookshop;
alter user bookshop quota unlimited on users ;
commit; 
create table books 
(
  id number,
  name varchar2(30),
  author varchar2(30),
  release_date date
)
;
alter table books
add constraint pk_books PRIMARY KEY(id)
;
create unique index index_books
on books(name, author, release_date) ;
create table about 
(
  id number,
  country varchar2(30),
  Language varchar2(20),
  publisher varchar2(40),
  quantity number,
  id_books number
);
alter table about
add constraint pk_about PRIMARY KEY(id);
alter table about
add constraint fk_about
foreign key (id_books)
references books(id)
;
