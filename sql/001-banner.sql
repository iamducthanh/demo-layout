create or replace table banner
(
	id varchar(255) not null,
	link varchar(255) not null,
	path_image varchar(150) not null,
	title varchar(150) not null,
	constraint `PRIMARY`
		primary key (id)
);

