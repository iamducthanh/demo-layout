package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name="return_receipt_detail")
@Data
public class ReturnReceiptDetailEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ReturnReceiptEntity returnReceiptId;
    @Column(nullable = false)
    private Integer quantity;

}
