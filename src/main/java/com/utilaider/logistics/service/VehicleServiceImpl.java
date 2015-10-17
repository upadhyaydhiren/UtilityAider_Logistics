/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.GenericDao;
import com.utilaider.logistics.domain.Vehicle;
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
public class VehicleServiceImpl extends GenericServiceImpl<String, Vehicle> implements VehicleService {

    public VehicleServiceImpl() {
    }

    @Autowired
    public VehicleServiceImpl(@Qualifier("vehicleDaoImpl") GenericDao<String, Vehicle> genericDao) {
        super(genericDao);
    }

}
