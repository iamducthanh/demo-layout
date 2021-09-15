package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "supplier_invoice")
@Data
public class SupplierInvoiceEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private SupplierEntity supplierId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ImportInvoiceEntity importInvoiceId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity creatorId; // nhân viên tạo
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity returneeId; // nhân viên trả
    @Column(nullable = false)
    private Date dateReturn;
    @Column(nullable = false, columnDefinition = "bigint default 0")
    private Long total;
    @Column(nullable = false, columnDefinition = "text")
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
