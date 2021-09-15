package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="operation_right")
@Data
public class OperationRightEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private TaskEntity taskId;
    @Column(nullable = false, length = 50)
    private String name;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;


}
