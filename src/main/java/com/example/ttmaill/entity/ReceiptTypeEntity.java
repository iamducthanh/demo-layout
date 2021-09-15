package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name="receipt_type")
@Data
public class ReceiptTypeEntity extends BaseEntity{


    @Column(nullable = false, length = 50, unique = true)
    private String name;
    @Column
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
