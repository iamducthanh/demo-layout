create or replace table inventory_slip_detail
(
	id varchar(255) not null,
	actual_quantity int not null,
	quantity_in_stock int not null,
	inventory_slip_id_id varchar(64) not null,
	product_detail_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK350gm5s4n42idmo15a1ieotp7
		foreign key (inventory_slip_id_id) references inventory_slip (id),
	constraint FK4wv7asb78mkj62uucg8ui0oka
		foreign key (product_detail_id_id) references product_detail (id)
);

