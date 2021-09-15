create or replace table import_invoice
(
	id varchar(255) not null,
	date_inport datetime not null,
	note varchar(255) null,
	return_price_supplier bigint default 0 not null,
	status bit default b'1' null,
	total bigint not null,
	staff_id_id varchar(64) not null,
	supplier_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKcr4t9yuq91qt7tml2je4nfcni
		foreign key (supplier_id_id) references supplier (id),
	constraint FKt46btltw19q86ix3n460vdcsj
		foreign key (staff_id_id) references staff (id)
);

