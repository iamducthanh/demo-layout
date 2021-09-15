create or replace table promotion
(
	id varchar(255) not null,
	content text not null,
	date_end datetime null,
	date_start datetime null,
	name varchar(100) not null,
	note varchar(255) null,
	banner_id_id varchar(64) null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKmm6bd306et1nafaimu1l39n8u
		foreign key (banner_id_id) references banner (id)
);

