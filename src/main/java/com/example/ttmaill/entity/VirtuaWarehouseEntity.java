package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "virtua_warehouse")
@Data
public class VirtuaWarehouseEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @Column(nullable = false)
    private Integer quantity;
    @Column(columnDefinition = "bit default 1")
    private Boolean status;

}
