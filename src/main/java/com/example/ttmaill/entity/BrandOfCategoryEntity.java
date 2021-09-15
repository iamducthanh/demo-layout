package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="brand_category")
@Data
public class BrandOfCategoryEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private CategoryEntity categoryId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private BrandEntity brandId;
    @Column
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;


}
