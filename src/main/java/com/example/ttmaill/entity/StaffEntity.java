package com.example.ttmaill.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="staff")
@Data
public class StaffEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @Column(nullable = false, length =50)
    private String fullName;
    @Column(nullable = false)
    private Date dateOfBirth;
    @Column(nullable = false, length = 15, unique = true)
    private String phoneNumber;
    @Column(nullable = false, length =50, unique = true)
    private String email;
    @Column(nullable = false, length = 100)
    private String address;
    @Column(nullable = false, length = 15, unique = true)
    private String citizenId;
    @Column(nullable = false)
    private String avatar;
    @Column(nullable = false)
    private Long salary;
    @Column(nullable = false, columnDefinition = "bit default 1")
    private Boolean gender;
    @Column(nullable = false)
    private String position;
    @Column(nullable = false, columnDefinition = "bit default 1")
    private Boolean status;
    @Column(columnDefinition = "timestamp default current_timestamp")
    private Date dateCreated;

}
