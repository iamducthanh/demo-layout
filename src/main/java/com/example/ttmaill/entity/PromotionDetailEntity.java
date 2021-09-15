package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="promotion_detail")
@Data
public class PromotionDetailEntity extends BaseEntity{


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
