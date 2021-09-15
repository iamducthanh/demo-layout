create or replace table receipt_type
(
	id varchar(64) not null,
	description varchar(255) null,
	name varchar(50) not null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id),
	constraint UK_a3geg0kortkk22ufhsp0i5hvj
		unique (name)
)
engine=MyISAM;

