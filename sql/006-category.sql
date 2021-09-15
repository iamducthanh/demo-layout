create or replace table category
(
	id varchar(255) not null,
	description varchar(255) null,
	name varchar(50) not null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id)
);

