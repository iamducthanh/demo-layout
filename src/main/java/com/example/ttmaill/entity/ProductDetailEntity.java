package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="product_detail")
@Data
public class ProductDetailEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn
    private ProductEntity productId;
    @ManyToOne
    @JoinColumn
    private AttributeValueEntity idAttributeValue;
    @Column(nullable = false)
    private Long salePrice;
    @Column(nullable = false)
    private Integer quantity;
    @Column(nullable = false, length = 150)
    private String location;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
