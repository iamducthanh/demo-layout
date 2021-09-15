package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "warranty_receipt")
@Data
public class WarrantyReceiptEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private CustomerEntity customerId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity receiver;
    @Column(nullable = false)
    private Date dateReceived;
    @Column
    private Date dateExpectedReturn;
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
