create or replace table product_image
(
	id varchar(255) not null,
	path_name varchar(255) not null,
	mix_id_id varchar(64) null,
	product_id_id varchar(64) null,
	status bit default b'1' null,
	constraint `PRIMARY`
		primary key (id),
	constraint UK_6324vl5e9bu8wnha0swdtgue2
		unique (path_name),
	constraint FK4162eufwsd0ka0mpfeonoypqp
		foreign key (mix_id_id) references mix (id),
	constraint FKgptqyfp5sl5007xjqkl3xvco8
		foreign key (product_id_id) references product (id)
);

