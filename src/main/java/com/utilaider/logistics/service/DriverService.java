/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.Driver;
import java.util.LinkedList;

/**
 *
 * @author SARJIT
 */
public interface DriverService {

    public LinkedList<Driver> getAllDriver() throws Exception;

    public Driver getDriverById(Long driverId) throws Exception;

    public boolean insertDriver(Driver driverObj) throws Exception;

    public void updateDriver(Driver driverObj) throws Exception;

    public void deleteDriver(Driver driverObj) throws Exception;

}
