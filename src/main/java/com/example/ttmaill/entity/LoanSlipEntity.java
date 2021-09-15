package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="loan_slip")
@Data
public class LoanSlipEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
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
