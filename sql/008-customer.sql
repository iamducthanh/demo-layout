create or replace table customer
(
	id varchar(255) not null,
	address varchar(100) null,
	customer_type bit default b'1' not null,
	email varchar(50) not null,
	facebook varchar(100) null,
	name varchar(100) not null,
	note varchar(255) null,
	phone_number varchar(15) not null,
	status bit default b'1' null,
	zalo varchar(100) null,
	constraint `PRIMARY`
		primary key (id)
);

