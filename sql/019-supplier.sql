create or replace table supplier
(
	id varchar(255) not null,
	address varchar(100) null,
	email varchar(50) not null,
	facebook varchar(100) null,
	name varchar(100) not null,
	note text null,
	phone_number varchar(15) not null,
	status bit default b'1' null,
	tax_code varchar(50) null,
	zalo varchar(100) null,
	constraint `PRIMARY`
		primary key (id)
);

