create or replace table supplier_invoice_details
(
	id varchar(255) not null,
	quantity int not null,
	product_detail_id_id varchar(64) not null,
	supplỉe_invoice_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKcog5h9t41c4i78m0qgutoa6hc
		foreign key (supplỉe_invoice_id_id) references supplier_invoice (id),
	constraint FKdyec8ur9ngg9b6eups5nw8spy
		foreign key (product_detail_id_id) references product_detail (id)
);

