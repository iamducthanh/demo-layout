package com.example.ttmaill.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="banner")
@Data
public class BannerEntity {
    // banner website

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length = 150)
    private String title;
    @Column(nullable = false)
    private String link;
    @Column(nullable = false, length = 150)
    private String pathImage;

}
