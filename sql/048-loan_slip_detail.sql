create or replace table loan_slip_detail
(
	id varchar(255) not null,
	date_return datetime not null,
	imei varchar(255) not null,
	note varchar(255) null,
	quantity int not null,
	quantity_return int null,
	product_detail_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKeq442vlq5du5ovh5sn07q23e1
		foreign key (product_detail_id_id) references product_detail (id)
);

