package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="rating")
@Data
public class RatingEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductEntity productId;
    @Column(nullable = false, length = 50)
    private String reviewer;
    @Column(nullable = false, length = 15)
    private String phoneNumber;
    @Column(nullable = false, length = 50)
    private String email;
    @Column(nullable = false)
    private Integer rating;
    @Column
    private String content;
    @Column(columnDefinition = "bit default 0")
    private Boolean censorStatus;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;
    @Column(columnDefinition = "timestamp default current_timestamp")
    private Date dateCreated;

}
