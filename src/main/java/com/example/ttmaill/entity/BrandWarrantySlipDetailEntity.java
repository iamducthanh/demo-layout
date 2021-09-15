package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="brand_warranty_slip_detail")
@Data
public class BrandWarrantySlipDetailEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @Column(nullable = false)
    private Date dateReturn;
    @Column(nullable = false)
    private Integer quantity;

}
