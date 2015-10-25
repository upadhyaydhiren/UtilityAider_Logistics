/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

/**
 *
 * @author Dhiren
 */
@Entity(name = "users_industry")
public class UsersIndustry implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @OneToOne
    @JoinColumn(name = "business_industry_id")
    private BusinessIndustry businessIndustry;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public BusinessIndustry getBusinessIndustry() {
        return businessIndustry;
    }

    public Integer getId() {
        return id;
    }

    @JsonBackReference
    public User getUser() {
        return user;
    }

    public void setBusinessIndustry(BusinessIndustry businessIndustry) {
        this.businessIndustry = businessIndustry;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
