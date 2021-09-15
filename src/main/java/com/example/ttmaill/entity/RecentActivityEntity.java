package com.example.ttmaill.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="recent_activity")
@Data
public class RecentActivityEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;

}
