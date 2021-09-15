create or replace table import_invoice_detail
(
	id varchar(64) not null,
	price bigint not null,
	quantity int not null,
	import_invoice_id_id varchar(64) not null,
	product_detail_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id)
)
engine=MyISAM;

create or replace index FKo46uq9dq3vtcxafbt39phw4j0
	on import_invoice_detail (import_invoice_id_id);

create or replace index FKru7aje7g8ot3xu856ddcg7lvf
	on import_invoice_detail (product_detail_id_id);

