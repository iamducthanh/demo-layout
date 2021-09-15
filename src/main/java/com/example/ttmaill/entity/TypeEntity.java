package com.example.ttmaill.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="types")
@Data
public class TypeEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length = 50, unique = true)
    private String name;
    @Column
    private String description;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
