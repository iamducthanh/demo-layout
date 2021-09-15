package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="import_invoice")
@Data
public class ImportInvoiceEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private SupplierEntity supplierId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity staffId;
    @Column(nullable = false)
    private Date dateInport;
    @Column(nullable = false, columnDefinition = "bigint default 0")
    private Long returnPriceSupplier;
    @Column(nullable = false)
    private Long total;
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
