create or replace table brand_warranty_slip
(
	id varchar(64) not null,
	note varchar(255) null,
	status bit default b'1' null,
	creator_id varchar(64) not null,
	sender_id_id varchar(64) not null,
	supplier_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id)
)
engine=MyISAM;

create or replace index FK2rouod70k20298pxiv65thneq
	on brand_warranty_slip (supplier_id_id);

create or replace index FKg9w865q8m139bdgr2b563wp2v
	on brand_warranty_slip (sender_id_id);

create or replace index FKj3msureavnkhcvyuca38n3brr
	on brand_warranty_slip (creator_id);

