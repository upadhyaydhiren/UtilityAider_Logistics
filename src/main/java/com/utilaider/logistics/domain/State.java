/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.domain;

import java.util.List;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

/**
 *
 * @author Dhiren
 */
@Entity(name = "state")
public class State {

    @Id
    @Column(name = "state_name")
    private String stateName;
    @ElementCollection
    @CollectionTable(name = "state_city", joinColumns = @JoinColumn(name = "state_name"))
    @Column(name = "city_name")
    private List<String> cityList;

    public List<String> getCityList() {
        return cityList;
    }

    public String getStateName() {
        return stateName;
    }

    public void setCityList(List<String> cityList) {
        this.cityList = cityList;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

}
