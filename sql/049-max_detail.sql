create or replace table max_detail
(
	id varchar(255) not null,
	quantity int not null,
	mix_id_id varchar(64) not null,
	product_detail_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKf5qdqs2or2vbpud09r0rqtqi5
		foreign key (product_detail_id_id) references product_detail (id),
	constraint FKm9enogfq96mc05i4dgvwu7x6o
		foreign key (mix_id_id) references mix (id)
);

