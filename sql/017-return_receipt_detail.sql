create or replace table return_receipt_detail
(
	id varchar(64) not null,
	quantity int not null,
	return_receipt_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id)
)
engine=MyISAM;

create or replace index FKd6xu91b1y1ex6haim6bs7vptp
	on return_receipt_detail (return_receipt_id_id);

