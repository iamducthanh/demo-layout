package com.example.ttmaill.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="notification")
@Data
public class NotificationEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;

}
