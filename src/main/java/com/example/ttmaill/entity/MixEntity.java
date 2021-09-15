package com.example.ttmaill.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="mix")
@Data
public class MixEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length = 150, unique = true)
    private String name;
    @Column(nullable = false)
    private Long price;
    @Column(nullable = false, columnDefinition = "text")
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
