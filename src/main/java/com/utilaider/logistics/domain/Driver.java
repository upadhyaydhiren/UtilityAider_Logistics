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
import java.util.List;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "driver")
@AttributeOverrides(
        {
            @AttributeOverride(name = "id", column = @Column(name = "driver_id"))
        }
)
public class Driver extends User {

    @Temporal(TemporalType.DATE)
    private Date dob;
    private String profilePic;
    private String licenseNo;
    @ElementCollection
    @CollectionTable(name = "owner_address", joinColumns = @JoinColumn(name = "driver_id"))
    private List<Address> addresses;

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

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }
}
