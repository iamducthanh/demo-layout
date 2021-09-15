create or replace table mix
(
	id varchar(255) not null,
	description text not null,
	name varchar(150) not null,
	price bigint not null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id)
);

