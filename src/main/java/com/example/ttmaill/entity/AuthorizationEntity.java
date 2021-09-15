package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="authorizatio")
@Data
public class AuthorizationEntity {

    //Quyền nhân viên

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity staffId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private OperationRightEntity operationRightId;

}
