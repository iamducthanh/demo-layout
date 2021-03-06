package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="company_detail")
@Data
public class CompanyDetailEntity extends BaseEntity{


    @Column(nullable = false, length = 150)
    private String name;
    @Column(nullable = false, length = 15)
    private String phoneNumber;
    @Column(nullable = false, length = 15)
    private String hotline;
    @Column(nullable = false, length = 50)
    private String email;
    @Column(nullable = false, length = 150)
    private String address;

}
