create or replace table loan_slip
(
	id varchar(255) not null,
	date_loan datetime not null,
	date_return datetime not null,
	note varchar(255) null,
	status bit default b'1' null,
	borrower_id_id varchar(64) not null,
	lender_id_id varchar(64) not null,
	constraint `PRIMARY`
		primary key (id),
	constraint FK37yjkky5n3qk9pao6um74crdt
		foreign key (borrower_id_id) references staff (id),
	constraint FKeebxwsg0c7d46kyb1npglmstu
		foreign key (lender_id_id) references staff (id)
);

