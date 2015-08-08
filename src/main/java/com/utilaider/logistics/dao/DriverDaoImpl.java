/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Driver;
import java.util.LinkedList;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SARJIT
 */
@Repository
@Transactional
public class DriverDaoImpl implements DriverDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public LinkedList<Driver> getAllDriver() throws Exception {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Driver.class);
        return new LinkedList<>(criteria.list());
    }

    @Override
    public Driver getDriverById(Long driverId) throws Exception {
        return (Driver) sessionFactory.getCurrentSession().get(Driver.class, driverId);
    }

    @Override
    public boolean insertDriver(Driver driverObj) throws Exception {
        return (Long) sessionFactory.getCurrentSession().save(driverObj) > 0;
    }

    @Override
    public void updateDriver(Driver driverObj) throws Exception {
        sessionFactory.getCurrentSession().update(driverObj);
    }

    @Override
    public void deleteDriver(Driver driverObj) throws Exception {
        sessionFactory.getCurrentSession().delete(driverObj);
    }

}
