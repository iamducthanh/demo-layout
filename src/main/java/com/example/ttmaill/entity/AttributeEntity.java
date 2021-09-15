package com.example.ttmaill.entity;

import lombok.Data;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Data
@Entity
@Table(name="attribute")
public class AttributeEntity extends BaseEntity {

    //Thuộc tính sản phẩm
    @Column(nullable = false, length = 50, unique = true)
    private String name;

    private String description;

    @Column(columnDefinition = "bit default 1")
    private Boolean status;
//
//    @OneToMany(mappedBy = "attributeId")
//    private List<AttributeValueEntity> attributeValues;

}
