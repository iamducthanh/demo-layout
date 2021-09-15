package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "warranty_receipt")
@Data
public class WarrantyReceiptEntity extends BaseEntity{


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
