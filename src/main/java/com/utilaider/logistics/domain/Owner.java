/*
 AUTHOR:                     SARJIT J DELIVALA
 FUNCTIONS AND DESCRIPTION:  Specialized class of User. Will show how many drivers and trucks he has.
 DATE:                       14th May 2015
 */
package com.utilaider.logistics.domain;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 *
 * @author SARJIT
 */
@Entity
@Table(name = "owner")
@PrimaryKeyJoinColumn(name = "user_id")
public class Owner extends User {

    private String ownerType;
    @OneToMany(fetch = FetchType.LAZY)
    private List<Driver> driverlist;
    @OneToMany(fetch = FetchType.LAZY)
    private List<Vehicle> vehicles;

    public String getOwnerType() {
        return ownerType;
    }

    public void setOwnerType(String ownerType) {
        this.ownerType = ownerType;
    }

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
}
