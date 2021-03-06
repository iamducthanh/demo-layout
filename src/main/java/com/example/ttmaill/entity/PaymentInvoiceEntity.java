package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="payment_invoice")
@Data
public class PaymentInvoiceEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private CustomerEntity customerId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity saleStaffId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity creator;
    @Column(nullable = false)
    private Date datePayment;
    @Column(nullable = false)
    private String saleChannel;
    @Column(nullable = false)
    private String paymentMethod;
    @Column(columnDefinition = "bit default 0")
    private Boolean paymentStatus;
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
