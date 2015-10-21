/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 *
 * @author Dhiren
 */
@Entity(name = "address")
public class Address implements Serializable {

    @Id
    @GeneratedValue(generator = "gen")
    @Column(name = "id", unique = true, nullable = false)
    @GenericGenerator(name = "gen", strategy = "foreign", parameters = @Parameter(name = "property", value = "user"))
    private Long id;
    @Column(name = "street_name")
    private String streetName;
    @Column(name = "city_name")
    private String city;
    @Column(name = "state_name")
    private String state;
    private Integer pincode;
    private String country;
    private Double latitude;
    private Double longitude;
    @OneToOne(mappedBy = "address", cascade = CascadeType.ALL)
    private User user;

    public Long getId() {
        return id;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Integer getPincode() {
        return pincode;
    }

    public void setPincode(Integer pincode) {
        this.pincode = pincode;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @JsonBackReference
    public User getUser() {
        return user;
    }

    public void setId(Long id) {
        this.id = id;
    }

}
