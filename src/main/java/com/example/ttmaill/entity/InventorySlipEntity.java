package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="inventory_slip")
@Data
public class InventorySlipEntity extends BaseEntity{


    @Column(nullable = false)
    private Date dateInspection;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity creator; // người tạo
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity reviewer; // người kiểm
    @Column(columnDefinition = "text")
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
