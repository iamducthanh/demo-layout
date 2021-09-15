create or replace table product
(
	id varchar(255) not null,
	description text not null,
	discount bigint default 0 not null,
	input_price bigint not null,
	name varchar(150) not null,
	status bit default b'1' null,
	brand_id_id varchar(64) not null,
	type_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK2rcbucpwu0t28fiivt1aqxpss
		foreign key (brand_id_id) references brand (id),
	constraint FKq19mnhae76kll650w14pugajh
		foreign key (type_id_id) references types (id)
);

