package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="attributeValue")
@Data
public class AttributeValueEntity {
// giá trị thuộc tính sản phẩm

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private AttributeEntity attributeId;
    @Column(nullable = false, length = 50, unique = true)
    private String value;
    @Column
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
