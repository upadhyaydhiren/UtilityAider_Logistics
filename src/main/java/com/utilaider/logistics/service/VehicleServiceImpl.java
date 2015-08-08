/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.VehicleDao;
import com.utilaider.logistics.domain.Vehicle;
import java.util.LinkedList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SARJIT
 */
@Service
@Transactional
public class VehicleServiceImpl implements VehicleDao{

    @Autowired
    VehicleDao vehicleDao;

    @Override
    public LinkedList<Vehicle> getAllVehicles() throws Exception{
        return vehicleDao.getAllVehicles();
    }

    @Override
    public Vehicle getVehicleByRegNo(String regNo) throws Exception{
       return vehicleDao.getVehicleByRegNo(regNo);
    }

    @Override
    public boolean saveVechile(Vehicle objVehicle) throws Exception{
        return vehicleDao.saveVechile(objVehicle);
    }

    @Override
    public void updateVechile(Vehicle objVehicle) throws Exception{
        vehicleDao.updateVechile(objVehicle);
    }

    @Override
    public void deleteVechile(Vehicle objVehicle) throws Exception{
        vehicleDao.deleteVechile(objVehicle);
    }
    
}
