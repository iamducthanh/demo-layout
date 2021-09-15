package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="timekeeping")
@Data
public class TimekeepingEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity staffId;
    @Column(nullable = false)
    private Date clockInTime;
    @Column(nullable = false)
    private Date clockOffTime;
    @Column(nullable = false)
    private String note;
    @Column(columnDefinition = "timestamp default current_timestamp")
    private Date dateCreated;

}
