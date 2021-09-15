package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="type_category")
@Data
public class TypeOfCategoryEntity extends BaseEntity{


    @Column(nullable = false, length = 50)
    private String name;
    @ManyToOne
    @JoinColumn(nullable = false)
    private CategoryEntity categoryId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private TypeEntity typeId;
    @Column
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
