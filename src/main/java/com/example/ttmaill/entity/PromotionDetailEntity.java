package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="promotion_detail")
@Data
public class PromotionDetailEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private PromotionEntity promotionId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductEntity productId;
    @Column(nullable = false)
    private Long discountValue;
    @Column(columnDefinition = "bit default 0")
    private Boolean cumulative;

}
