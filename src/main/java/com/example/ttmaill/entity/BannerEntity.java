package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="banner")
@Data
public class BannerEntity extends BaseEntity{
    // banner website


    @Column(nullable = false, length = 150)
    private String title;
    @Column(nullable = false)
    private String link;
    @Column(nullable = false, length = 150)
    private String pathImage;

}
