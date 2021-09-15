package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "shipping_invoice")
@Data
public class ShippingInvoiceEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private TransportEntity TransportId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private PaymentInvoiceEntity paymentInvoiceId;
    @Column(nullable = false, length = 100)
    private String nameRecipient;
    @Column(nullable = false, length = 15)
    private String phoneNumberRecipient;
    @Column(nullable = false, length = 50)
    private String emailRecipient;
    @Column(length = 100)
    private String addressRecipient;
    @Column(nullable = false)
    private Float weight;
    @Column(columnDefinition = "int default 0")
    private Integer shippingStatus; // 0 là  đang chuyển, 1 là đã chuyển, 2 là hoàn trả
    @Column(nullable = false)
    private Long shippingFee;
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
