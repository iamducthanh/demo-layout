package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="banner_detail")
@Data
public class BannerDetailEntity {
    // chi tiết banner

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductEntity productId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private BannerEntity bannerId;

}
