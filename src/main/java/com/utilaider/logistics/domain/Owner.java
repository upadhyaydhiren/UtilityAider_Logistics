/*
 AUTHOR:                     SARJIT J DELIVALA
 FUNCTIONS AND DESCRIPTION:  Specialized class of User. Will show how many drivers and trucks he has.
 DATE:                       14th May 2015
 */
package com.utilaider.logistics.domain;

import java.util.List;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author SARJIT
 */
@Entity
@Table(name = "owner")
@AttributeOverrides(
        {
            @AttributeOverride(name = "id",column = @Column(name = "owner_id"))
        }
)
public class Owner extends User {

    private String ownerType;
    @ElementCollection
    @CollectionTable(name ="owner_address",joinColumns = @JoinColumn(name = "owner_id"))
    private List<Address>addresses;
    @OneToMany(fetch = FetchType.LAZY)
    private List<Driver>driverlist;
    @OneToMany(fetch = FetchType.LAZY)
    private List<Vehicle>vehicles;
    
    public String getOwnerType() {
        return ownerType;
    }

    public void setOwnerType(String ownerType) {
        this.ownerType = ownerType;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
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
