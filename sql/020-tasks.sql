create or replace table tasks
(
	id varchar(255) not null,
	name varchar(50) not null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id)
);

