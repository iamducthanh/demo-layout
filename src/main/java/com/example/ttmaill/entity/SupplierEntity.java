package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="supplier")
@Data
public class SupplierEntity extends BaseEntity{


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
    @Column(length = 50)
    private String taxCode;
    @Column(columnDefinition = "text")
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
