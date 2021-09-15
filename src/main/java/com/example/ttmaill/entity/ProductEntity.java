package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="product")
@Data
public class ProductEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length = 150)
    private String name;
    @Column(nullable = false)
    private Long inputPrice;
    @Column(nullable = false, columnDefinition = "bigint default 0")
    private Long discount;
    @Column(nullable = false,columnDefinition = "text")
    private String description;
    @ManyToOne
    @JoinColumn(nullable = false)
    private BrandEntity brandId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private TypeEntity typeId;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
