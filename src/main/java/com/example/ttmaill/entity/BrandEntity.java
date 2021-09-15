package com.example.ttmaill.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="brand")
@Data
public class BrandEntity {
// thươn ghiệu
    @Id
    @Column(nullable = false, length = 64)
    private String id;
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
