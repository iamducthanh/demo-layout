create or replace table payment_invoice_detail
(
	id varchar(255) not null,
	discount_price bigint not null,
	quantity int not null,
	selling_price bigint not null,
	payment_invoice_id_id varchar(64) not null,
	product_detail_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK566hym6krd6b9msb05p1ijc5i
		foreign key (payment_invoice_id_id) references payment_invoice (id),
	constraint FKkx1413o6aq4vl7cxuickxelpi
		foreign key (product_detail_id_id) references product_detail (id)
);

