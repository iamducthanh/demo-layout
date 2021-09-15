package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "voucher")
@Data
public class VoucherEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length = 150)
    private String name;
    @Column(nullable = false)
    private Integer quantity;
    @Column(nullable = false)
    private Long discountValue;
    @Column(columnDefinition = "bit default 0")
    private Boolean cumulative;
    @Column(nullable = false)
    private Date dateStart;
    @Column(nullable = false)
    private Date dateEnd;
    @Column(nullable = false, length = 30)
    private String code;
    @Column(columnDefinition = "bit default 0")
    private Boolean usageStatus;
    @Column(columnDefinition = "text")
    private String description;

}
