create or replace table type_category
(
	id varchar(255) not null,
	description varchar(255) null,
	name varchar(50) not null,
	category_id_id varchar(64) not null,
	status bit default b'1' null,
	type_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK72xmg8s16xjv25vp0cfnb50oj
		foreign key (type_id_id) references types (id),
	constraint FKfje076cchhn4ksit5596apbf3
		foreign key (category_id_id) references category (id)
);

