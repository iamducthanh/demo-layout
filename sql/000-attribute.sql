create or replace table attribute
(
	id varchar(255) not null,
	description varchar(255) null,
	name varchar(50) not null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id),
	constraint UK_hpwum0iq12fs4ej5d0tgy6wsn
		unique (name)
);

