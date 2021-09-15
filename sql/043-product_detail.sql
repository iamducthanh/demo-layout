create or replace table product_detail
(
	id varchar(255) not null,
	location varchar(150) not null,
	quantity int not null,
	sale_price bigint not null,
	status bit default b'1' null,
	id_attribute_value_id varchar(64) null,
	product_id_id varchar(64) null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK11runbnwg5qf66s1cye2iy7i2
		foreign key (id_attribute_value_id) references attribute_value (id),
	constraint FKepyybdyyk9jyqrghpqfirm5sx
		foreign key (product_id_id) references product (id)
);

