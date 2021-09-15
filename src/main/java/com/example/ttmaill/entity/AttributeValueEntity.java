package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;


@Data
@Entity
@Table(name="attributeValue")
public class AttributeValueEntity extends BaseEntity{
// giá trị thuộc tính sản phẩm

    @Column(nullable = false, length = 50, unique = true)
    private String value;
    @Column
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

    @ManyToOne
    @JoinColumn(name="attribute_id")
    private AttributeEntity attributeId;

}
