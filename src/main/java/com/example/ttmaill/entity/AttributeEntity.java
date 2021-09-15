package com.example.ttmaill.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="attribute")
@Data
public class AttributeEntity {

    //Thuộc tính sản phẩm

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length = 50, unique = true)
    private String name;
    @Column
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
