create or replace table return_receipt
(
	id varchar(64) not null,
	date_return datetime not null,
	description varchar(255) null,
	status bit default b'1' null,
	total bigint not null,
	creator_id varchar(64) not null,
	customer_id_id varchar(64) not null,
	payment_invoice_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id)
)
engine=MyISAM;

create or replace index FK3fj0jp603n4k6vdajynv5xyq2
	on return_receipt (customer_id_id);

create or replace index FKcrxhv7py9h7tcdbpf4mn138r0
	on return_receipt (creator_id);

create or replace index FKledmomqlj6t6j9bvs92nkxsm
	on return_receipt (payment_invoice_id_id);

