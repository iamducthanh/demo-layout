package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="authorizatio")
@Data
public class AuthorizationEntity extends BaseEntity{

    //Quyền nhân viên


    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity staffId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private OperationRightEntity operationRightId;

}
