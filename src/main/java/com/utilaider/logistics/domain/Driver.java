/*
 AUTHOR:                     SARJIT J DELIVALA
 FUNCTIONS AND DESCRIPTION:  Driver class will differentiate Driver itself from normal User.
 DATE:                       14th May 2015
 */
/*
 Edited 
 Author:Dhiren
 Description:Driver class is also a user.This class have also differante specilise property
 Date:16th May 2015
 */
package com.utilaider.logistics.domain;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "driver")
@PrimaryKeyJoinColumn(name = "user_id")
public class Driver extends User {

    @Temporal(TemporalType.DATE)
    private Date dob;
    private String profilePic;
    private String licenseNo;
    @Column(name = "service_duration_month")
    private Integer serviceDuration;

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

    public String getLicenseNo() {
        return licenseNo;
    }

    public void setLicenseNo(String licenseNo) {
        this.licenseNo = licenseNo;
    }

    public Integer getServiceDuration() {
        return serviceDuration;
    }

    public void setServiceDuration(Integer serviceDuration) {
        this.serviceDuration = serviceDuration;
    }

}
