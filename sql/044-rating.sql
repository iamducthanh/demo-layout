create or replace table rating
(
	id varchar(255) not null,
	censor_status bit default b'0' null,
	content varchar(255) null,
	date_created timestamp default current_timestamp() not null,
	email varchar(50) not null,
	phone_number varchar(15) not null,
	rating int not null,
	reviewer varchar(50) not null,
	status bit default b'1' null,
	product_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKamtlnfb2c96i1t8lw0pg2t68m
		foreign key (product_id_id) references product (id)
);

