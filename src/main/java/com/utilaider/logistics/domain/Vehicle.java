/*
 AUTHOR:                     SARJIT J DELIVALA
 FUNCTIONS AND DESCRIPTION:  Generalized Vehicle. Provides all common data of Vehicle
 DATE:                       14th May 2015
 */
package com.utilaider.logistics.domain;

import java.io.Serializable;
import java.util.List;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

/**
 *
 * @author SARJIT
 */
@Entity
@Table(name = "vehicle")
public class Vehicle implements Serializable {

    @Id
    @Column(name = "registration_no")
    private String regNo;
    @Column(name = "model_no")
    private String modelNo;
    @Column(name = "vehicle_insurance_no")
    private String insuranceNo;
    private String capacity;
    @Column(name = "no_of_wheels")
    private Integer noOfWheels;
    private Integer weight;
    @ElementCollection
    @CollectionTable(name = "vehicle_permits", joinColumns = @JoinColumn(name = "registration_noregistration_no"))
    @Column(name = "permit")
    private List<String> permits;
    @Column(name = "vehicle_type")
    private String vehicleType;
    @ElementCollection
    @CollectionTable(name = "vechile_tracking_log", joinColumns = @JoinColumn(name = "registration_no"))
    @AttributeOverrides({
        @AttributeOverride(name = "deviceType", column = @Column(name = "device_type")),
        @AttributeOverride(name = "date", column = @Column(name = "date")),
        @AttributeOverride(name = "latitude", column = @Column(name = "latitude")),
        @AttributeOverride(name = "longitude", column = @Column(name = "longitude"))
    })
    private List<TrackLog> trackLogs;
    public String getRegNo() {
        return regNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }

    public String getModelNo() {
        return modelNo;
    }

    public void setModelNo(String modelNo) {
        this.modelNo = modelNo;
    }

    public String getInsuranceNo() {
        return insuranceNo;
    }

    public void setInsuranceNo(String insuranceNo) {
        this.insuranceNo = insuranceNo;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public Integer getNoOfWheels() {
        return noOfWheels;
    }

    public void setNoOfWheels(Integer noOfWheels) {
        this.noOfWheels = noOfWheels;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public List<String> getPermits() {
        return permits;
    }

    public List<TrackLog> getTrackLogs() {
        return trackLogs;
    }

    public void setPermits(List<String> permits) {
        this.permits = permits;
    }

    public void setTrackLogs(List<TrackLog> trackLogs) {
        this.trackLogs = trackLogs;
    }
}