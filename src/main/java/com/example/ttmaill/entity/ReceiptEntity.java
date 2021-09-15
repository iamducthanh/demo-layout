package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="receipt")
@Data
public class ReceiptEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false, name="receipt_type_id")
    private ReceiptTypeEntity receiptTypeId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity submitter; // nhân viên nộp tiền
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
