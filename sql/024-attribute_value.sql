create or replace table attribute_value
(
	id varchar(255) not null,
	description varchar(255) null,
	status bit default b'1' null,
	value varchar(50) not null,
	attribute_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint UK_qa6dlgpcuw8cy1j7v0gn03ura
		unique (value),
	constraint FKtm04xrxw1jh3991csr15mh85x
		foreign key (attribute_id_id) references attribute (id)
);

