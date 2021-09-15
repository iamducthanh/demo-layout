package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "promotion")
@Data
public class PromotionEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn
    private BannerEntity bannerId;
    @Column(nullable = false, length = 100)
    private String name;
    @Column(nullable = false, columnDefinition = "text")
    private String content;
    @Column
    private Date dateStart;
    @Column
    private Date dateEnd;
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
