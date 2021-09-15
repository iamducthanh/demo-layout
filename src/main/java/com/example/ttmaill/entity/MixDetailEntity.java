package com.example.ttmaill.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="max_detail")
@Data
public class MixDetailEntity extends BaseEntity{


    @ManyToOne
    @JoinColumn(nullable = false)
    private MixEntity mixId;
    @ManyToOne
    @JoinColumn(nullable = false)
    private ProductDetailEntity productDetailId;
    @Column(nullable = false)
    private Integer quantity;

}
