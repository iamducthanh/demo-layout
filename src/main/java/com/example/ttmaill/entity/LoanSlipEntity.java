package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="loan_slip")
@Data
public class LoanSlipEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity borrowerId;// nhân viên mượn
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity lenderId;
    @Column(nullable = false)
    private Date dateLoan; // ngày mượn
    @Column(nullable = false)
    private Date dateReturn; // ngày dự kiến trả
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
