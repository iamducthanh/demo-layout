create or replace table brand_warranty_slip_detail
(
	id varchar(64) not null,
	date_return datetime not null,
	quantity int not null,
	product_detail_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id)
)
engine=MyISAM;

create or replace index FKkl608k18v6ycmceh0vkumg2it
	on brand_warranty_slip_detail (product_detail_id_id);

