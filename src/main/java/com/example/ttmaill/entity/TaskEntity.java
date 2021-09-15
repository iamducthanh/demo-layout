package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tasks")
@Data
public class TaskEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length = 50)
    private String name;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
