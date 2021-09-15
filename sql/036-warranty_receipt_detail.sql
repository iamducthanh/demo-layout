create or replace table warranty_receipt_detail
(
	id varchar(255) not null,
	date_completion datetime null,
	quantity int not null,
	repair_status bit default b'0' null,
	warranty_receipt_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK31bdwqf6dkoj66amgxtxgpkqh
		foreign key (warranty_receipt_id_id) references warranty_receipt (id)
);

