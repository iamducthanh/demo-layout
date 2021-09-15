package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name="return_receipt_detail")
@Data
public class ReturnReceiptDetailEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private ReturnReceiptEntity returnReceiptId;
    @Column(nullable = false)
    private Integer quantity;

}
