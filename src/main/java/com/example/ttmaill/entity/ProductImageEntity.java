package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="product_image")
@Data
public class ProductImageEntity extends BaseEntity{


    @Column(nullable = false, unique = true)
    private String pathName;
    @ManyToOne
    @JoinColumn
    private ProductEntity productId;
    @ManyToOne
    @JoinColumn
    private MixEntity mixId;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
