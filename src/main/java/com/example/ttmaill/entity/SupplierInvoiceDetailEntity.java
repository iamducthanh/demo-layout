package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="supplier_invoice_details")
@Data
public class SupplierInvoiceDetailEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private SupplierInvoiceEntity supplỉeInvoiceId;
    @Column(nullable = false)
    private Integer quantity;

}
