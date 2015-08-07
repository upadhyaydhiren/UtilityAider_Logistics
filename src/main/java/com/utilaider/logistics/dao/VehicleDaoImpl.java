/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Vehicle;
import java.util.LinkedList;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SARJIT
 */
@Repository
public class VehicleDaoImpl implements VehicleDao{

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public LinkedList<Vehicle> getAllVehicles() throws Exception{
        Criteria criteria=sessionFactory.getCurrentSession().createCriteria(Vehicle.class);
        return new LinkedList<>(criteria.list());
    }

    @Override
    public Vehicle getVehicleByRegNo(String regNo) throws Exception{
       return (Vehicle) sessionFactory.getCurrentSession().get(Vehicle.class, regNo);
    }

    @Override
    public boolean saveVechile(Vehicle objVehicle) throws Exception{
        return (Long)sessionFactory.getCurrentSession().save(objVehicle)>0;
    }

    @Override
    public void updateVechile(Vehicle objVehicle) throws Exception{
        sessionFactory.getCurrentSession().update(objVehicle);
    }

    @Override
    public void deleteVechile(Vehicle objVehicle) throws Exception{
        sessionFactory.getCurrentSession().delete(objVehicle);
    }
    
}
