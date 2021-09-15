package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="inventory_slip_detail")
@Data
public class InventorySlipDetailEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private InventorySlipEntity inventorySlipId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @Column(nullable = false)
    private Integer actualQuantity;
    @Column(nullable = false)
    private Integer quantityInStock;

}
