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
public enum VehicleType {

    DUMPER("DUMPER", "dumper"),
    JCB("JCB", "jcb");
    private final String fullName;
    private final String shortName;

    private VehicleType(String fullName, String shortName) {
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
