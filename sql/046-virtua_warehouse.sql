create or replace table virtua_warehouse
(
	id varchar(255) not null,
	quantity int not null,
	status bit default b'1' null,
	product_detail_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKns6s8bj04r9nfe7m5n9cbhhhu
		foreign key (product_detail_id_id) references product_detail (id)
);

