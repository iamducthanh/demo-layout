package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="banner_detail")
@Data
public class BannerDetailEntity extends BaseEntity{
    // chi tiết banner


    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductEntity productId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private BannerEntity bannerId;

}
