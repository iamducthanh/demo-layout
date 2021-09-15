create or replace table brand
(
	id varchar(255) not null,
	address varchar(100) not null,
	description text null,
	email varchar(50) not null,
	name varchar(100) not null,
	phone_number varchar(15) not null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id),
	constraint UK_505xtsx85qyo70ukq3fktug2p
		unique (phone_number),
	constraint UK_rdxh7tq2xs66r485cc8dkxt77
		unique (name),
	constraint UK_tly6e6jmqmqtsqaygqg6ak4nd
		unique (email)
);

