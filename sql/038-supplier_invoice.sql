create or replace table supplier_invoice
(
	id varchar(255) not null,
	date_return datetime not null,
	note text not null,
	status bit default b'1' null,
	total bigint default 0 not null,
	creator_id_id varchar(64) not null,
	import_invoice_id_id varchar(64) not null,
	returnee_id_id varchar(64) not null,
	supplier_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FKc9qd15e9sci7s22iekb9ge7tb
		foreign key (import_invoice_id_id) references import_invoice (id),
	constraint FKfpb3eqtgff96kohs06uvh0lh8
		foreign key (returnee_id_id) references staff (id),
	constraint FKg0hp0xyosjj3pa783nr5jnpph
		foreign key (supplier_id_id) references supplier (id),
	constraint FKsyw5baxev5gfi4sho3bfapopg
		foreign key (creator_id_id) references staff (id)
);

