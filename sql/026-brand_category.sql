create or replace table brand_category
(
	id varchar(255) not null,
	description varchar(255) null,
	status bit default b'1' null,
	brand_id_id varchar(64) not null,
	category_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK873uvkwwnw73fibjq7gsh7tqe
		foreign key (category_id_id) references category (id),
	constraint FKkuxch17p0y9srub8a9g4hjtxm
		foreign key (brand_id_id) references brand (id)
);

