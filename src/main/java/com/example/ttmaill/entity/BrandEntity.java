package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="brand")
@Data
public class BrandEntity extends BaseEntity{
// thươn ghiệu

    @Column(nullable = false, length = 100, unique = true)
    private String name;
    @Column(nullable = false, length = 15, unique = true)
    private String phoneNumber;
    @Column(nullable = false, length = 50, unique = true)
    private String email;
    @Column(nullable = false,length =100)
    private String address;
    @Column(columnDefinition = "text")
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
