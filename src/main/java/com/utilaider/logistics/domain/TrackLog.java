/*
 AUTHOR:                     SARJIT J DELIVALA
 FUNCTIONS AND DESCRIPTION:  To keep log of truck and its location.
 DATE:                       14th May 2015
 */
package com.utilaider.logistics.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Embeddable
public class TrackLog implements Serializable {

    private String deviceType;
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    private Double latitude;
    private Double longitude;

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public Date getDate() {
        return date;
    }

    public Double getLatitude() {
        return latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

}
