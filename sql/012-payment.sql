create or replace table payment
(
	id varchar(64) not null,
	amount_of_money bigint not null,
	description varchar(255) null,
	note varchar(255) null,
	status bit default b'1' null,
	payer_id varchar(64) not null,
	receipt_type_id_id varchar(64) not null,
	receiver_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id)
)
engine=MyISAM;

create or replace index FKhifaxcuxl8th0w68eimnaqmo2
	on payment (receipt_type_id_id);

create or replace index FKii6fl418jeg4q8hgl2ptq2m8q
	on payment (receiver_id);

create or replace index FKt4ljp944o24lbuenj1quticb4
	on payment (payer_id);

