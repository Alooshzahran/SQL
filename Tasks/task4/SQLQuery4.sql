----create 3 table and make join and notinality-----------------------------------------

create table customer_info (
customer_id int identity(1,1) , customer_name varchar (255) , contact varchar(255), country varchar(50)
primary key (customer_id)
);

create table order_info (order_id int identity(1,1)  ,     order_date date ,      customer_id int not null,
primary key (order_id),
foreign key (customer_id) references customer_info,

);

create table product_info (product_id int identity(1,1)   ,  product_name varchar(50) , price float , order_id int not null,

primary key (product_id),

foreign key (order_id) references order_info,

);

insert into customer_info (customer_name,contact,country) 
values ('batool','batool123','irbid'),('hala','123','irbid'),('shams','1234','amman');

select * from customer_info;

insert into order_info (order_date,customer_id)  values ('2022-03-12',1),('2022-05-23',2);
select * from order_info;

insert into product_info ( product_name  , price , order_id ) values ('rice',20,1),('bread',12,2),('pizza',100,1),('shwerma',2000,2);

select * from customer_info 
join  order_info on customer_info.customer_id=order_info.customer_id
join   product_info on product_info.order_id=order_info.order_id;
;

select * from customer_info 
left join  order_info on customer_info.customer_id=order_info.customer_id
left join   product_info on product_info.order_id=order_info.order_id;
;


select * from customer_info 
right join  order_info on customer_info.customer_id=order_info.customer_id
right join   product_info on product_info.order_id=order_info.order_id;
;