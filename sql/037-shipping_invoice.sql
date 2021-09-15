create or replace table shipping_invoice
(
	id varchar(255) not null,
	address_recipient varchar(100) null,
	email_recipient varchar(50) not null,
	name_recipient varchar(100) not null,
	note varchar(255) null,
	phone_number_recipient varchar(15) not null,
	shipping_fee bigint not null,
	shipping_status int default 0 null,
	status bit default b'1' null,
	weight float not null,
	transport_id_id varchar(64) not null,
	payment_invoice_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK2j7en4pfe5xfl2mofa82ysf22
		foreign key (transport_id_id) references transport (id),
	constraint FKhrmtoadqbp860qxie4xd5qhw0
		foreign key (payment_invoice_id_id) references payment_invoice (id)
);

