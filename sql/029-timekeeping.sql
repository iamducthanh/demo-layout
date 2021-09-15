create or replace table timekeeping
(
	id varchar(255) not null,
	clock_in_time datetime not null,
	clock_off_time datetime not null,
	date_created timestamp default current_timestamp() not null,
	note varchar(255) not null,
	staff_id_id varchar(255) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK8jvgh8lc5kx3y10qvtj4rcryp
		foreign key (staff_id_id) references staff (id)
);

