package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="return_receipt")
@Data
public class ReturnReceiptEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private CustomerEntity customerId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private PaymentInvoiceEntity paymentInvoiceId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity creator;
    @Column(nullable = false)
    private Date dateReturn;
    @Column(nullable = false)
    private Long total;
    @Column
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
