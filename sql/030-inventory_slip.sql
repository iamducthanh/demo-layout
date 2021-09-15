create or replace table inventory_slip
(
	id varchar(255) not null,
	date_inspection datetime not null,
	note text null,
	status bit default b'1' null,
	creator_id varchar(64) not null,
	reviewer_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK95gi7818karvuxxpin2brwxl7
		foreign key (creator_id) references staff (id),
	constraint FKs6j5ur8vipb3glgvrwag2ax78
		foreign key (reviewer_id) references staff (id)
);

