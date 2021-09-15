package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="supplier_invoice_details")
@Data
public class SupplierInvoiceDetailEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private SupplierInvoiceEntity supplỉeInvoiceId;
    @Column(nullable = false)
    private Integer quantity;

}
