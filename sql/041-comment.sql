create or replace table comment
(
	id varchar(255) not null,
	censor_status bit default b'0' null,
	content varchar(255) null,
	date_created timestamp default current_timestamp() not null,
	email varchar(50) not null,
	inquirer varchar(50) not null,
	phone_number varchar(15) not null,
	status bit default b'1' null,
	product_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK6toj7b98t5t4bh95k6cy9u80o
		foreign key (product_id_id) references product (id)
);

