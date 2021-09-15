create or replace table transport
(
	id varchar(255) not null,
	address varchar(100) null,
	description text null,
	email varchar(50) not null,
	name varchar(100) not null,
	phone_number varchar(15) not null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id)
);

