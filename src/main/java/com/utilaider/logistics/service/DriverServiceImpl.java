/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.*;
import com.utilaider.logistics.domain.Driver;
import java.util.LinkedList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author SARJIT
 */
@Service
public class DriverServiceImpl implements DriverDao {
    
    @Autowired
    DriverDao driverDao;
    
    @Override
    public LinkedList<Driver> getAllDriver() throws Exception {
        return driverDao.getAllDriver();
    }
    
    @Override
    public Driver getDriverById(Long driverId) throws Exception {
        return driverDao.getDriverById(driverId);
    }
    
    @Override
    public boolean insertDriver(Driver driverObj) throws Exception {
        return driverDao.insertDriver(driverObj);
    }
    
    @Override
    public void updateDriver(Driver driverObj) throws Exception {
        driverDao.updateDriver(driverObj);
    }
    
    @Override
    public void deleteDriver(Driver driverObj) throws Exception {
        driverDao.deleteDriver(driverObj);
    }
    
}
