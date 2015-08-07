/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.Vehicle;
import java.util.LinkedList;

/**
 *
 * @author SARJIT
 */
public interface VehicleService 
{
    public LinkedList<Vehicle> getAllVehicles() throws Exception;
    public Vehicle getVehicleByRegNo(String regNo) throws Exception;
    public boolean saveVechile(Vehicle objVehicle) throws Exception;
    public void updateVechile(Vehicle objVehicle) throws Exception;
    public void deleteVechile(Vehicle objVehicle) throws Exception;
}
