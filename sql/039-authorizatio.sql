create or replace table authorizatio
(
	id varchar(255) not null,
	operation_right_id_id varchar(64) not null,
	staff_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKhv6a2p8k6w7vbxtgcxs1qkiy4
		foreign key (operation_right_id_id) references operation_right (id),
	constraint FKikp3b60vbvu0d95umg9fb1643
		foreign key (staff_id_id) references staff (id)
);

