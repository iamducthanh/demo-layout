package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tasks")
@Data
public class TaskEntity extends BaseEntity{


    @Column(nullable = false, length = 50)
    private String name;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
