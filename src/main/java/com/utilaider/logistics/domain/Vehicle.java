/*
 AUTHOR:                     SARJIT J DELIVALA
 FUNCTIONS AND DESCRIPTION:  Generalized Vehicle. Provides all common data of Vehicle
 DATE:                       14th May 2015
 */
package com.utilaider.logistics.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

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
    @Column(name = "permit")
    @Enumerated(EnumType.STRING)
    private VehiclePermits permits;
    @Column(name = "vehicle_type")
    @Enumerated(EnumType.STRING)
    private VehicleType vehicleType;
    @ElementCollection
    @CollectionTable(name = "vechile_tracking_log", joinColumns = @JoinColumn(name = "registration_no"))
    @AttributeOverrides({
        @AttributeOverride(name = "deviceType", column = @Column(name = "device_type")),
        @AttributeOverride(name = "date", column = @Column(name = "date")),
        @AttributeOverride(name = "latitude", column = @Column(name = "latitude")),
        @AttributeOverride(name = "longitude", column = @Column(name = "longitude"))
    })
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<TrackLog> trackLogs;
    @Column(name = "charges_per_hour")
    private Double chargesPerHour;
    @Column(name = "is_trackable")
    private boolean isTrackable;
    @Column(name = "road_tax_valid_date")
    @Temporal(TemporalType.DATE)
    private Date roadTaxValidDate;
    @Column(name = "route_info")
    private String routeInfo;

    public String getRegNo() {
        return regNo;
    }

    public boolean isIsTrackable() {
        return isTrackable;
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

    public VehicleType getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(VehicleType vehicleType) {
        this.vehicleType = vehicleType;
    }

    public VehiclePermits getPermits() {
        return permits;
    }

    public void setPermits(VehiclePermits permits) {
        this.permits = permits;
    }

    public List<TrackLog> getTrackLogs() {
        return trackLogs;
    }

    public void setTrackLogs(List<TrackLog> trackLogs) {
        this.trackLogs = trackLogs;
    }

    public Double getChargesPerHour() {
        return chargesPerHour;
    }

    public boolean getIsTrackable() {
        return isTrackable;
    }

    public Date getRoadTaxValidDate() {
        return roadTaxValidDate;
    }

    public String getRouteInfo() {
        return routeInfo;
    }

    public void setChargesPerHour(Double chargesPerHour) {
        this.chargesPerHour = chargesPerHour;
    }

    public void setIsTrackable(boolean isTrackable) {
        this.isTrackable = isTrackable;
    }

    public void setRoadTaxValidDate(Date roadTaxValidDate) {
        this.roadTaxValidDate = roadTaxValidDate;
    }

    public void setRouteInfo(String routeInfo) {
        this.routeInfo = routeInfo;
    }

}
