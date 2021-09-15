create or replace table warranty_receipt
(
	id varchar(255) not null,
	date_expected_return datetime null,
	date_received datetime not null,
	note varchar(255) null,
	status bit default b'1' null,
	customer_id_id varchar(64) not null,
	receiver_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK4uc4mri22vnpyvulbngi7liue
		foreign key (customer_id_id) references customer (id),
	constraint FKrfmcmisjmgudooihh7nw50pkq
		foreign key (receiver_id) references staff (id)
);

