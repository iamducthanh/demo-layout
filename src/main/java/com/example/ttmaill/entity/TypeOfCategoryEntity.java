package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="type_category")
@Data
public class TypeOfCategoryEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
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
