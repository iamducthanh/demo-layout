create or replace table operation_right
(
	id varchar(255) not null,
	name varchar(50) not null,
	status bit default b'1' null,
	task_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKgmrd4xqms6ht1tl5etoxjhia
		foreign key (task_id_id) references tasks (id)
);

