package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="loan_slip_detail")
@Data
public class LoanSlipDetailEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @Column(nullable = false)
    private Integer quantity;
    @Column(nullable = false)
    private Date dateReturn;
    @Column
    private Integer quantityReturn;
    @Column
    private String note;
    @Column(nullable = false)
    private String imei;

}
