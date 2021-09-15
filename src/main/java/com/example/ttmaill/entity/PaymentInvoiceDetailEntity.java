package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "payment_invoice_detail")
@Data
public class PaymentInvoiceDetailEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private PaymentInvoiceEntity paymentInvoiceId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @Column(nullable = false)
    private Integer quantity;
    @Column(nullable = false)
    private Long sellingPrice;
    @Column(nullable = false)
    private Long discountPrice;

}
