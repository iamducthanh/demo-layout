create or replace table company_detail
(
	id varchar(255) not null,
	address varchar(150) not null,
	email varchar(50) not null,
	hotline varchar(15) not null,
	name varchar(150) not null,
	phone_number varchar(15) not null,
	constraint `PRIMARY`
		primary key (id)
);

