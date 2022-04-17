use store; 
  Create table countries (
   code int primary key ,name varchar(20) unique, continent_name varchar(20) not null
  );
  Create table users ( id int primary key ,full_name varchar(20), email varchar(20)unique,
  gender char(1) check( gender="m" or  gender="f"), date_of_birth varchar(15),created_at datetime,country_code int,
  foreign key (country_code) references countries (code) 
  );
   Create table orders( id int primary key ,  user_id int, status varchar (6), created_at datetime ,
  foreign key (user_id ) references users(id)
  );
    Create table products (id int not null ,name varchar(10),price int  ,status varchar(10),created_at datetime
    );
    create table order_products(
  order_id int  ,product_id int ,quantity int default 0 ,
  primary key (order_id ,product_id), foreign key (order_id) references orders (id),
   foreign key (product_id) references products (id)
  );
  use store; 
  alter table orders
modify column status varchar(10) check(status ='start' or status='finish');
 alter table products
 add Bouns varchar(10);
-- DML -insert 
insert into countries values ('999','Ahmed','asia'); 
insert into users values ('999','Ahmed','aksalslimi@gmail.com','m','1999','3','999'); 
insert into orders values ('3','4','start',2); 
insert into products values ('5','fox','5','valid',4); 
insert into orders_products values ('5','7','2'); 
 
-- DML - Update 
update countries set name='khalid' where id='999'; 
-- DML - Delete 
delete from products where id='5';
select *from orders;
select *from products ;
select *from users;
select *from countries ;
