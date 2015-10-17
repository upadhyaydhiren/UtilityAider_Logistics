/*
 AUTHOR:                     SARJIT J DELIVALA
 FUNCTIONS AND DESCRIPTION:  Specialized class of User. Will show how many drivers and trucks he has.
 DATE:                       14th May 2015
 */
package com.utilaider.logistics.domain;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

/**
 *
 * @author SARJIT
 */
@Entity
@Table(name = "owner")
@PrimaryKeyJoinColumn(name = "user_id")
public class Owner extends User {

    @OneToMany(fetch = FetchType.LAZY)
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<Driver> driverlist;
    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<Vehicle> vehicles;
    @Column(name = "no_of_vehicles")
    private Integer noOfVehicles;
    @Column(name = "no_of_employee")
    private Integer noOfEmployee;
    @Column(name = "business_type")
    private String businessType;
    @Column(name = "user_referance_code")
    private String userReferanceCode;

    public List<Driver> getDriverlist() {
        return driverlist;
    }

    public void setDriverlist(List<Driver> driverlist) {
        this.driverlist = driverlist;
    }

    public void setVehicles(List<Vehicle> vehicles) {
        this.vehicles = vehicles;
    }

    public List<Vehicle> getVehicles() {
        return vehicles;
    }

    public Integer getNoOfVehicles() {
        return noOfVehicles;
    }

    public Integer getNoOfEmployee() {
        return noOfEmployee;
    }

    public void setNoOfEmployee(Integer noOfEmployee) {
        this.noOfEmployee = noOfEmployee;
    }

    public void setNoOfVehicles(Integer noOfVehicles) {
        this.noOfVehicles = noOfVehicles;
    }

    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }

    public String getBusinessType() {
        return businessType;
    }

    public void setUserReferanceCode(String userReferanceCode) {
        this.userReferanceCode = userReferanceCode;
    }

    public String getUserReferanceCode() {
        return userReferanceCode;
    }

}
