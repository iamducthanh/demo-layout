package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="import_invoice_detail")
@Data
public class ImportInvoiceDetailEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ImportInvoiceEntity importInvoiceId;
    @Column(nullable = false)
    private Integer quantity;
    @Column(nullable = false)
    private Long price;

}
