drop table user_info;
drop table product_info;
drop table shopping_cart;


create table user_info(
	id varchar(50) primary key,
	password varchar(20) not null,
	name varchar(10) not null,
	birth date not null,
	email varchar(20) not null,
	phone varchar(20) not null,
	address varchar(50) not null
);

create table product_info(
	code varchar(10) primary key,
	name varchar(20) not null,
	price int not null,
	amount int not null,
	content varchar(100) not null
);

create table shopping_cart(
	id varchar(50) not null,
	code varchar(10) not null,
	amount int not null,
	purchaseTime dateTime not null,
	totalMoney int not null
);

create table product_images(
	code varchar(10) primary key,
	img1 varchar(30) not null,
	img2 varchar(30) not null,
	img3 varchar(30) not null,
	img4 varchar(30) not null,
	img5 varchar(30) not null
);


select * from user_info;

select id from user_info where id='wonywony93' and password='1111';





