package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="operation_right")
@Data
public class OperationRightEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private TaskEntity taskId;
    @Column(nullable = false, length = 50)
    private String name;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;


}
