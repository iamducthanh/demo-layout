create table attribute
(
    id          varchar(255)     not null
        primary key,
    description varchar(255)     null,
    name        varchar(50)      not null,
    status      bit default b'1' null,
    constraint UK_hpwum0iq12fs4ej5d0tgy6wsn
        unique (name)
);

create table attribute_value
(
    id              varchar(255)     not null
        primary key,
    description     varchar(255)     null,
    status          bit default b'1' null,
    value           varchar(50)      not null,
    attribute_id_id varchar(64)      not null,
    constraint UK_qa6dlgpcuw8cy1j7v0gn03ura
        unique (value),
    constraint FKtm04xrxw1jh3991csr15mh85x
        foreign key (attribute_id_id) references attribute (id)
);

create table banner
(
    id         varchar(255) not null
        primary key,
    link       varchar(255) not null,
    path_image varchar(150) not null,
    title      varchar(150) not null
);

create table blog
(
    id varchar(255) not null
        primary key
);

create table brand
(
    id           varchar(255)     not null
        primary key,
    address      varchar(100)     not null,
    description  text             null,
    email        varchar(50)      not null,
    name         varchar(100)     not null,
    phone_number varchar(15)      not null,
    status       bit default b'1' null,
    constraint UK_505xtsx85qyo70ukq3fktug2p
        unique (phone_number),
    constraint UK_rdxh7tq2xs66r485cc8dkxt77
        unique (name),
    constraint UK_tly6e6jmqmqtsqaygqg6ak4nd
        unique (email)
);

create table brand_warranty_slip
(
    id             varchar(64)      not null
        primary key,
    note           varchar(255)     null,
    status         bit default b'1' null,
    creator_id     varchar(64)      not null,
    sender_id_id   varchar(64)      not null,
    supplier_id_id varchar(64)      not null
)
    engine = MyISAM;

create index FK2rouod70k20298pxiv65thneq
    on brand_warranty_slip (supplier_id_id);

create index FKg9w865q8m139bdgr2b563wp2v
    on brand_warranty_slip (sender_id_id);

create index FKj3msureavnkhcvyuca38n3brr
    on brand_warranty_slip (creator_id);

create table brand_warranty_slip_detail
(
    id                   varchar(64) not null
        primary key,
    date_return          datetime    not null,
    quantity             int         not null,
    product_detail_id_id varchar(64) not null
)
    engine = MyISAM;

create index FKkl608k18v6ycmceh0vkumg2it
    on brand_warranty_slip_detail (product_detail_id_id);

create table category
(
    id          varchar(255)     not null
        primary key,
    description varchar(255)     null,
    name        varchar(50)      not null,
    status      bit default b'1' null
);

create table brand_category
(
    id             varchar(255)     not null
        primary key,
    description    varchar(255)     null,
    status         bit default b'1' null,
    brand_id_id    varchar(64)      not null,
    category_id_id varchar(64)      not null,
    constraint FK873uvkwwnw73fibjq7gsh7tqe
        foreign key (category_id_id) references category (id),
    constraint FKkuxch17p0y9srub8a9g4hjtxm
        foreign key (brand_id_id) references brand (id)
);

create table company_detail
(
    id           varchar(255) not null
        primary key,
    address      varchar(150) not null,
    email        varchar(50)  not null,
    hotline      varchar(15)  not null,
    name         varchar(150) not null,
    phone_number varchar(15)  not null
);

create table customer
(
    id            varchar(255)     not null
        primary key,
    address       varchar(100)     null,
    customer_type bit default b'1' not null,
    email         varchar(50)      not null,
    facebook      varchar(100)     null,
    name          varchar(100)     not null,
    note          varchar(255)     null,
    phone_number  varchar(15)      not null,
    status        bit default b'1' null,
    zalo          varchar(100)     null
);

create table import_invoice_detail
(
    id                   varchar(64) not null
        primary key,
    price                bigint      not null,
    quantity             int         not null,
    import_invoice_id_id varchar(64) not null,
    product_detail_id_id varchar(64) not null
)
    engine = MyISAM;

create index FKo46uq9dq3vtcxafbt39phw4j0
    on import_invoice_detail (import_invoice_id_id);

create index FKru7aje7g8ot3xu856ddcg7lvf
    on import_invoice_detail (product_detail_id_id);

create table mix
(
    id          varchar(255)     not null
        primary key,
    description text             not null,
    name        varchar(150)     not null,
    price       bigint           not null,
    status      bit default b'1' null
);

create table notification
(
    id varchar(255) not null
        primary key
);

create table payment
(
    id                 varchar(64)      not null
        primary key,
    amount_of_money    bigint           not null,
    description        varchar(255)     null,
    note               varchar(255)     null,
    status             bit default b'1' null,
    payer_id           varchar(64)      not null,
    receipt_type_id_id varchar(64)      not null,
    receiver_id        varchar(64)      not null
)
    engine = MyISAM;

create index FKhifaxcuxl8th0w68eimnaqmo2
    on payment (receipt_type_id_id);

create index FKii6fl418jeg4q8hgl2ptq2m8q
    on payment (receiver_id);

create index FKt4ljp944o24lbuenj1quticb4
    on payment (payer_id);

create table promotion
(
    id           varchar(255)     not null
        primary key,
    content      text             not null,
    date_end     datetime         null,
    date_start   datetime         null,
    name         varchar(100)     not null,
    note         varchar(255)     null,
    banner_id_id varchar(64)      null,
    status       bit default b'1' null,
    constraint FKmm6bd306et1nafaimu1l39n8u
        foreign key (banner_id_id) references banner (id)
);

create table receipt
(
    id              varchar(64)      not null
        primary key,
    amount_of_money bigint           not null,
    description     varchar(255)     null,
    note            varchar(255)     null,
    status          bit default b'1' null,
    receipt_type_id varchar(64)      not null,
    receiver_id     varchar(64)      not null,
    submitter_id    varchar(64)      not null
)
    engine = MyISAM;

create index FK79o9tw4r359vgtrf1nu8babnl
    on receipt (submitter_id);

create index FKaheyu67ym90njc72hgv6l9jsv
    on receipt (receiver_id);

create index FKrmo0a52wb1i65atv60s258343
    on receipt (receipt_type_id);

create table receipt_type
(
    id          varchar(64)      not null
        primary key,
    description varchar(255)     null,
    name        varchar(50)      not null,
    status      bit default b'1' null,
    constraint UK_a3geg0kortkk22ufhsp0i5hvj
        unique (name)
)
    engine = MyISAM;

create table recent_activity
(
    id varchar(255) not null
        primary key
);

create table return_receipt
(
    id                    varchar(64)      not null
        primary key,
    date_return           datetime         not null,
    description           varchar(255)     null,
    status                bit default b'1' null,
    total                 bigint           not null,
    creator_id            varchar(64)      not null,
    customer_id_id        varchar(64)      not null,
    payment_invoice_id_id varchar(64)      not null
)
    engine = MyISAM;

create index FK3fj0jp603n4k6vdajynv5xyq2
    on return_receipt (customer_id_id);

create index FKcrxhv7py9h7tcdbpf4mn138r0
    on return_receipt (creator_id);

create index FKledmomqlj6t6j9bvs92nkxsm
    on return_receipt (payment_invoice_id_id);

create table return_receipt_detail
(
    id                   varchar(64) not null
        primary key,
    quantity             int         not null,
    return_receipt_id_id varchar(64) not null
)
    engine = MyISAM;

create index FKd6xu91b1y1ex6haim6bs7vptp
    on return_receipt_detail (return_receipt_id_id);

create table staff
(
    id            varchar(255)     not null
        primary key,
    address       varchar(100)     not null,
    avatar        varchar(255)     not null,
    citizen_id    varchar(15)      not null,
    date_created  datetime         not null,
    date_of_birth datetime         not null,
    email         varchar(50)      not null,
    full_name     varchar(50)      not null,
    gender        bit default b'1' not null,
    phone_number  varchar(15)      not null,
    position      varchar(255)     not null,
    salary        bigint           not null,
    status        bit default b'1' not null,
    constraint UK_ndd3ijgdey7uo6fk8fgb96qrv
        unique (citizen_id),
    constraint UK_pvctx4dbua9qh4p4s3gm3scrh
        unique (email),
    constraint UK_rpkd84jnduk7tp07j3tlpne15
        unique (phone_number)
);

create table inventory_slip
(
    id              varchar(255)     not null
        primary key,
    date_inspection datetime         not null,
    note            text             null,
    status          bit default b'1' null,
    creator_id      varchar(64)      not null,
    reviewer_id     varchar(64)      not null,
    constraint FK95gi7818karvuxxpin2brwxl7
        foreign key (creator_id) references staff (id),
    constraint FKs6j5ur8vipb3glgvrwag2ax78
        foreign key (reviewer_id) references staff (id)
);

create table loan_slip
(
    id             varchar(255)     not null
        primary key,
    date_loan      datetime         not null,
    date_return    datetime         not null,
    note           varchar(255)     null,
    status         bit default b'1' null,
    borrower_id_id varchar(64)      not null,
    lender_id_id   varchar(64)      not null,
    constraint FK37yjkky5n3qk9pao6um74crdt
        foreign key (borrower_id_id) references staff (id),
    constraint FKeebxwsg0c7d46kyb1npglmstu
        foreign key (lender_id_id) references staff (id)
);

create table payment_invoice
(
    id               varchar(255)     not null
        primary key,
    date_payment     datetime         not null,
    note             varchar(255)     null,
    payment_method   varchar(255)     not null,
    payment_status   bit default b'0' null,
    sale_channel     varchar(255)     not null,
    status           bit default b'1' null,
    creator_id       varchar(64)      not null,
    customer_id_id   varchar(64)      not null,
    sale_staff_id_id varchar(64)      not null,
    constraint FK39eehn4nip678owink55xd7qp
        foreign key (sale_staff_id_id) references staff (id),
    constraint FKdvimudcw4fouy11psf0l374o5
        foreign key (creator_id) references staff (id),
    constraint FKsq047thnoykd2vqfvxai7k9a3
        foreign key (customer_id_id) references customer (id)
);

create table supplier
(
    id           varchar(255)     not null
        primary key,
    address      varchar(100)     null,
    email        varchar(50)      not null,
    facebook     varchar(100)     null,
    name         varchar(100)     not null,
    note         text             null,
    phone_number varchar(15)      not null,
    status       bit default b'1' null,
    tax_code     varchar(50)      null,
    zalo         varchar(100)     null
);

create table import_invoice
(
    id                    varchar(255)        not null
        primary key,
    date_inport           datetime            not null,
    note                  varchar(255)        null,
    return_price_supplier bigint default 0    not null,
    status                bit    default b'1' null,
    total                 bigint              not null,
    staff_id_id           varchar(64)         not null,
    supplier_id_id        varchar(64)         not null,
    constraint FKcr4t9yuq91qt7tml2je4nfcni
        foreign key (supplier_id_id) references supplier (id),
    constraint FKt46btltw19q86ix3n460vdcsj
        foreign key (staff_id_id) references staff (id)
);

create table supplier_invoice
(
    id                   varchar(255)        not null
        primary key,
    date_return          datetime            not null,
    note                 text                not null,
    status               bit    default b'1' null,
    total                bigint default 0    not null,
    creator_id_id        varchar(64)         not null,
    import_invoice_id_id varchar(64)         not null,
    returnee_id_id       varchar(64)         not null,
    supplier_id_id       varchar(64)         not null,
    constraint FKc9qd15e9sci7s22iekb9ge7tb
        foreign key (import_invoice_id_id) references import_invoice (id),
    constraint FKfpb3eqtgff96kohs06uvh0lh8
        foreign key (returnee_id_id) references staff (id),
    constraint FKg0hp0xyosjj3pa783nr5jnpph
        foreign key (supplier_id_id) references supplier (id),
    constraint FKsyw5baxev5gfi4sho3bfapopg
        foreign key (creator_id_id) references staff (id)
);

create table tasks
(
    id     varchar(255)     not null
        primary key,
    name   varchar(50)      not null,
    status bit default b'1' null
);

create table operation_right
(
    id         varchar(255)     not null
        primary key,
    name       varchar(50)      not null,
    status     bit default b'1' null,
    task_id_id varchar(64)      not null,
    constraint FKgmrd4xqms6ht1tl5etoxjhia
        foreign key (task_id_id) references tasks (id)
);

create table authorizatio
(
    id                    varchar(255) not null
        primary key,
    operation_right_id_id varchar(64)  not null,
    staff_id_id           varchar(64)  not null,
    constraint FKhv6a2p8k6w7vbxtgcxs1qkiy4
        foreign key (operation_right_id_id) references operation_right (id),
    constraint FKikp3b60vbvu0d95umg9fb1643
        foreign key (staff_id_id) references staff (id)
);

create table timekeeping
(
    id             varchar(255)                          not null
        primary key,
    clock_in_time  datetime                              not null,
    clock_off_time datetime                              not null,
    date_created   timestamp default current_timestamp() not null,
    note           varchar(255)                          not null,
    staff_id_id    varchar(255)                          not null,
    constraint FK8jvgh8lc5kx3y10qvtj4rcryp
        foreign key (staff_id_id) references staff (id)
);

create table transport
(
    id           varchar(255)     not null
        primary key,
    address      varchar(100)     null,
    description  text             null,
    email        varchar(50)      not null,
    name         varchar(100)     not null,
    phone_number varchar(15)      not null,
    status       bit default b'1' null
);

create table shipping_invoice
(
    id                     varchar(255)     not null
        primary key,
    address_recipient      varchar(100)     null,
    email_recipient        varchar(50)      not null,
    name_recipient         varchar(100)     not null,
    note                   varchar(255)     null,
    phone_number_recipient varchar(15)      not null,
    shipping_fee           bigint           not null,
    shipping_status        int default 0    null,
    status                 bit default b'1' null,
    weight                 float            not null,
    transport_id_id        varchar(64)      not null,
    payment_invoice_id_id  varchar(64)      not null,
    constraint FK2j7en4pfe5xfl2mofa82ysf22
        foreign key (transport_id_id) references transport (id),
    constraint FKhrmtoadqbp860qxie4xd5qhw0
        foreign key (payment_invoice_id_id) references payment_invoice (id)
);

create table types
(
    id          varchar(255)     not null
        primary key,
    description varchar(255)     null,
    name        varchar(50)      not null,
    status      bit default b'1' null
);

create table product
(
    id          varchar(255)        not null
        primary key,
    description text                not null,
    discount    bigint default 0    not null,
    input_price bigint              not null,
    name        varchar(150)        not null,
    status      bit    default b'1' null,
    brand_id_id varchar(64)         not null,
    type_id_id  varchar(64)         not null,
    constraint FK2rcbucpwu0t28fiivt1aqxpss
        foreign key (brand_id_id) references brand (id),
    constraint FKq19mnhae76kll650w14pugajh
        foreign key (type_id_id) references types (id)
);

create table banner_detail
(
    id            varchar(255) not null
        primary key,
    banner_id_id  varchar(64)  not null,
    product_id_id varchar(64)  not null,
    constraint FK7kqj0rrb4ydtrgt7nlre3r560
        foreign key (product_id_id) references product (id),
    constraint FKmy0hdrbtnlhkd8slbnvdjto4v
        foreign key (banner_id_id) references banner (id)
);

create table comment
(
    id            varchar(255)                          not null
        primary key,
    censor_status bit       default b'0'                null,
    content       varchar(255)                          null,
    date_created  timestamp default current_timestamp() not null,
    email         varchar(50)                           not null,
    inquirer      varchar(50)                           not null,
    phone_number  varchar(15)                           not null,
    status        bit       default b'1'                null,
    product_id_id varchar(64)                           not null,
    constraint FK6toj7b98t5t4bh95k6cy9u80o
        foreign key (product_id_id) references product (id)
);

create table product_detail
(
    id                    varchar(255)     not null
        primary key,
    location              varchar(150)     not null,
    quantity              int              not null,
    sale_price            bigint           not null,
    status                bit default b'1' null,
    id_attribute_value_id varchar(64)      null,
    product_id_id         varchar(64)      null,
    constraint FK11runbnwg5qf66s1cye2iy7i2
        foreign key (id_attribute_value_id) references attribute_value (id),
    constraint FKepyybdyyk9jyqrghpqfirm5sx
        foreign key (product_id_id) references product (id)
);

create table inventory_slip_detail
(
    id                   varchar(255) not null
        primary key,
    actual_quantity      int          not null,
    quantity_in_stock    int          not null,
    inventory_slip_id_id varchar(64)  not null,
    product_detail_id_id varchar(64)  not null,
    constraint FK350gm5s4n42idmo15a1ieotp7
        foreign key (inventory_slip_id_id) references inventory_slip (id),
    constraint FK4wv7asb78mkj62uucg8ui0oka
        foreign key (product_detail_id_id) references product_detail (id)
);

create table loan_slip_detail
(
    id                   varchar(255) not null
        primary key,
    date_return          datetime     not null,
    imei                 varchar(255) not null,
    note                 varchar(255) null,
    quantity             int          not null,
    quantity_return      int          null,
    product_detail_id_id varchar(64)  not null,
    constraint FKeq442vlq5du5ovh5sn07q23e1
        foreign key (product_detail_id_id) references product_detail (id)
);

create table max_detail
(
    id                   varchar(255) not null
        primary key,
    quantity             int          not null,
    mix_id_id            varchar(64)  not null,
    product_detail_id_id varchar(64)  not null,
    constraint FKf5qdqs2or2vbpud09r0rqtqi5
        foreign key (product_detail_id_id) references product_detail (id),
    constraint FKm9enogfq96mc05i4dgvwu7x6o
        foreign key (mix_id_id) references mix (id)
);

create table payment_invoice_detail
(
    id                    varchar(255) not null
        primary key,
    discount_price        bigint       not null,
    quantity              int          not null,
    selling_price         bigint       not null,
    payment_invoice_id_id varchar(64)  not null,
    product_detail_id_id  varchar(64)  not null,
    constraint FK566hym6krd6b9msb05p1ijc5i
        foreign key (payment_invoice_id_id) references payment_invoice (id),
    constraint FKkx1413o6aq4vl7cxuickxelpi
        foreign key (product_detail_id_id) references product_detail (id)
);

create table product_image
(
    id            varchar(255)     not null
        primary key,
    path_name     varchar(255)     not null,
    mix_id_id     varchar(64)      null,
    product_id_id varchar(64)      null,
    status        bit default b'1' null,
    constraint UK_6324vl5e9bu8wnha0swdtgue2
        unique (path_name),
    constraint FK4162eufwsd0ka0mpfeonoypqp
        foreign key (mix_id_id) references mix (id),
    constraint FKgptqyfp5sl5007xjqkl3xvco8
        foreign key (product_id_id) references product (id)
);

create table promotion_detail
(
    id              varchar(255)     not null
        primary key,
    cumulative      bit default b'0' null,
    discount_value  bigint           not null,
    product_id_id   varchar(64)      not null,
    promotion_id_id varchar(64)      not null,
    constraint FKi1td4k7yrcw10jdrt2o0p73se
        foreign key (promotion_id_id) references promotion (id),
    constraint FKp4c0kaiy1cdopc0trqm7vm7cx
        foreign key (product_id_id) references product (id)
);

create table rating
(
    id            varchar(255)                          not null
        primary key,
    censor_status bit       default b'0'                null,
    content       varchar(255)                          null,
    date_created  timestamp default current_timestamp() not null,
    email         varchar(50)                           not null,
    phone_number  varchar(15)                           not null,
    rating        int                                   not null,
    reviewer      varchar(50)                           not null,
    status        bit       default b'1'                null,
    product_id_id varchar(64)                           not null,
    constraint FKamtlnfb2c96i1t8lw0pg2t68m
        foreign key (product_id_id) references product (id)
);

create table supplier_invoice_details
(
    id                    varchar(255) not null
        primary key,
    quantity              int          not null,
    product_detail_id_id  varchar(64)  not null,
    supplỉe_invoice_id_id varchar(64)  not null,
    constraint FKcog5h9t41c4i78m0qgutoa6hc
        foreign key (supplỉe_invoice_id_id) references supplier_invoice (id),
    constraint FKdyec8ur9ngg9b6eups5nw8spy
        foreign key (product_detail_id_id) references product_detail (id)
);

create table type_category
(
    id             varchar(255)     not null
        primary key,
    description    varchar(255)     null,
    name           varchar(50)      not null,
    category_id_id varchar(64)      not null,
    status         bit default b'1' null,
    type_id_id     varchar(64)      not null,
    constraint FK72xmg8s16xjv25vp0cfnb50oj
        foreign key (type_id_id) references types (id),
    constraint FKfje076cchhn4ksit5596apbf3
        foreign key (category_id_id) references category (id)
);

create table virtua_warehouse
(
    id                   varchar(255)     not null
        primary key,
    quantity             int              not null,
    status               bit default b'1' null,
    product_detail_id_id varchar(64)      not null,
    constraint FKns6s8bj04r9nfe7m5n9cbhhhu
        foreign key (product_detail_id_id) references product_detail (id)
);

create table voucher
(
    id             varchar(255)     not null
        primary key,
    code           varchar(30)      not null,
    cumulative     bit default b'0' null,
    date_end       datetime         not null,
    date_start     datetime         not null,
    description    text             null,
    discount_value bigint           not null,
    name           varchar(150)     not null,
    quantity       int              not null,
    usage_status   bit default b'0' null
);

create table warranty_receipt
(
    id                   varchar(255)     not null
        primary key,
    date_expected_return datetime         null,
    date_received        datetime         not null,
    note                 varchar(255)     null,
    status               bit default b'1' null,
    customer_id_id       varchar(64)      not null,
    receiver_id          varchar(64)      not null,
    constraint FK4uc4mri22vnpyvulbngi7liue
        foreign key (customer_id_id) references customer (id),
    constraint FKrfmcmisjmgudooihh7nw50pkq
        foreign key (receiver_id) references staff (id)
);

create table warranty_receipt_detail
(
    id                     varchar(255)     not null
        primary key,
    date_completion        datetime         null,
    quantity               int              not null,
    repair_status          bit default b'0' null,
    warranty_receipt_id_id varchar(64)      not null,
    constraint FK31bdwqf6dkoj66amgxtxgpkqh
        foreign key (warranty_receipt_id_id) references warranty_receipt (id)
);


