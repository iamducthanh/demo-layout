package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="warranty_receipt_detail")
@Data
public class WarrantyReceiptDetailEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private WarrantyReceiptEntity warrantyReceiptId;
    @Column(nullable = false)
    private Integer quantity;
    @Column(columnDefinition = "bit default 0")
    private Boolean repairStatus;
    @Column
    private Date dateCompletion;

}
