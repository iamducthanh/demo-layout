create or replace table receipt
(
	id varchar(64) not null,
	amount_of_money bigint not null,
	description varchar(255) null,
	note varchar(255) null,
	status bit default b'1' null,
	receipt_type_id varchar(64) not null,
	receiver_id varchar(64) not null,
	submitter_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id)
)
engine=MyISAM;

create or replace index FK79o9tw4r359vgtrf1nu8babnl
	on receipt (submitter_id);

create or replace index FKaheyu67ym90njc72hgv6l9jsv
	on receipt (receiver_id);

create or replace index FKrmo0a52wb1i65atv60s258343
	on receipt (receipt_type_id);

