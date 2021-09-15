create or replace table voucher
(
	id varchar(255) not null,
	code varchar(30) not null,
	cumulative bit default b'0' null,
	date_end datetime not null,
	date_start datetime not null,
	description text null,
	discount_value bigint not null,
	name varchar(150) not null,
	quantity int not null,
	usage_status bit default b'0' null,
	constraint `PRIMARY`
		primary key (id)
);

