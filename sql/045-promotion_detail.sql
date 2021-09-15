create or replace table promotion_detail
(
	id varchar(255) not null,
	cumulative bit default b'0' null,
	discount_value bigint not null,
	product_id_id varchar(64) not null,
	promotion_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKi1td4k7yrcw10jdrt2o0p73se
		foreign key (promotion_id_id) references promotion (id),
	constraint FKp4c0kaiy1cdopc0trqm7vm7cx
		foreign key (product_id_id) references product (id)
);

