create or replace table staff
(
	id varchar(255) not null,
	address varchar(100) not null,
	avatar varchar(255) not null,
	citizen_id varchar(15) not null,
	date_created datetime not null,
	date_of_birth datetime not null,
	email varchar(50) not null,
	full_name varchar(50) not null,
	gender bit default b'1' not null,
	phone_number varchar(15) not null,
	position varchar(255) not null,
	salary bigint not null,
	status bit default b'1' not null,
	constraint `PRIMARY`
		primary key (id),
	constraint UK_ndd3ijgdey7uo6fk8fgb96qrv
		unique (citizen_id),
	constraint UK_pvctx4dbua9qh4p4s3gm3scrh
		unique (email),
	constraint UK_rpkd84jnduk7tp07j3tlpne15
		unique (phone_number)
);

