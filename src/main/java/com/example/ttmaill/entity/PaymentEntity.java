package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="payment")
@Data
public class PaymentEntity extends BaseEntity{
    // phiếu chi


    @ManyToOne
    @JoinColumn(nullable = false)
    private ReceiptTypeEntity receiptTypeId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity payer; // nhân viên chi tieefn
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity receiver;//Nhân viên nhận tiền
    @Column(nullable = false)
    private Long amountOfMoney; //số tiền
    @Column
    private String description;
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
