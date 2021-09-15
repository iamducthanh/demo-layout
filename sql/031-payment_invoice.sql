create or replace table payment_invoice
(
	id varchar(255) not null,
	date_payment datetime not null,
	note varchar(255) null,
	payment_method varchar(255) not null,
	payment_status bit default b'0' null,
	sale_channel varchar(255) not null,
	status bit default b'1' null,
	creator_id varchar(64) not null,
	customer_id_id varchar(64) not null,
	sale_staff_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK39eehn4nip678owink55xd7qp
		foreign key (sale_staff_id_id) references staff (id),
	constraint FKdvimudcw4fouy11psf0l374o5
		foreign key (creator_id) references staff (id),
	constraint FKsq047thnoykd2vqfvxai7k9a3
		foreign key (customer_id_id) references customer (id)
);

