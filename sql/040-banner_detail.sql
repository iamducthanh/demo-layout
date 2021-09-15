create or replace table banner_detail
(
	id varchar(255) not null,
	banner_id_id varchar(64) not null,
	product_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK7kqj0rrb4ydtrgt7nlre3r560
		foreign key (product_id_id) references product (id),
	constraint FKmy0hdrbtnlhkd8slbnvdjto4v
		foreign key (banner_id_id) references banner (id)
);

