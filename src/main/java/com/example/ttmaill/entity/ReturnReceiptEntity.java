package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="return_receipt")
@Data
public class ReturnReceiptEntity extends BaseEntity{


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
