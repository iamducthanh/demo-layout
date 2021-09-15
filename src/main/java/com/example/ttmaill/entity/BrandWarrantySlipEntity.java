package com.example.ttmaill.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name="brand_warranty_slip")
@Data
public class BrandWarrantySlipEntity {

    @Id
    @Column(nullable = false, length = 64)
    private String id;
    @ManyToOne
    @JoinColumn(nullable = false)
    private SupplierEntity supplierId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity creator;
    @ManyToOne
    @JoinColumn(nullable = false)
    private StaffEntity senderId;
    @Column
    private String note;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
