package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="comment")
@Data
public class CommentEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductEntity productId;
    @Column(nullable = false, length = 50)
    private String inquirer;
    @Column(nullable = false, length = 15)
    private String phoneNumber;
    @Column(nullable = false, length = 50)
    private String email;
    @Column
    private String content;
    @Column(columnDefinition = "bit default 0")
    private Boolean censorStatus;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;
    @Column(columnDefinition = "timestamp default current_timestamp")
    private Date dateCreated;

}
