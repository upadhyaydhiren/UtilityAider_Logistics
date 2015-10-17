/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.domain;

/**
 *
 * @author Dhiren
 */
public enum VehiclePermits {

    ALL_INDIA_PERMITS("ALL INDIA PERMITS", "aip"),
    STATE_PERMITS("STATE_PERMITS", "sip");

    private final String fullName;
    private final String shortName;

    private VehiclePermits(String fullName, String shortName) {
        this.fullName = fullName;
        this.shortName = shortName;
    }

    public String getFullName() {
        return fullName;
    }

    public String getShortName() {
        return shortName;
    }
}
