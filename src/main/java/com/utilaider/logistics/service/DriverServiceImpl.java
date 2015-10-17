/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.DriverDao;
import com.utilaider.logistics.dao.GenericDao;
import com.utilaider.logistics.domain.Driver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SARJIT
 */
@Service
@Transactional
public class DriverServiceImpl extends GenericServiceImpl<Long, Driver> implements DriverService {

    private DriverDao driverDao;

    public DriverServiceImpl() {

    }

    @Autowired
    public DriverServiceImpl(@Qualifier("driverDaoImpl") GenericDao<Long, Driver> genericDao) {
        super(genericDao);
        this.driverDao = (DriverDao) genericDao;
    }

    @Override
    public Driver getDriverByMobileNo(String mobileNumber) throws Exception {
        return driverDao.getDriverByMobileNo(mobileNumber);
    }
}
