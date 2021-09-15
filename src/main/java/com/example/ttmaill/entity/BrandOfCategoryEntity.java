package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="brand_category")
@Data
public class BrandOfCategoryEntity extends BaseEntity{


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
