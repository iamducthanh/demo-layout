package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "customer")
@Data
public class CustomerEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length = 100)
    private String name;
    @Column(nullable = false, length = 15)
    private String phoneNumber;
    @Column(nullable = false, length = 50)
    private String email;
    @Column(length = 100)
    private String address;
    @Column(length = 100)
    private String facebook;
    @Column(length = 100)
    private String zalo;
    @Column(nullable = false, columnDefinition = "bit default 1")
    private Boolean customerType; // true là lẻ, false là sỉ
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
