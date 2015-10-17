/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Driver;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SARJIT
 */
@Repository
@Transactional
public class DriverDaoImpl extends GenericDaoImpl<Long, Driver> implements DriverDao {

    @Override
    public Driver getDriverByMobileNo(String mobileNumber) throws Exception {
        return (Driver) getSession().createCriteria(Driver.class).add(Restrictions.eq("mobile", mobileNumber)).uniqueResult();
    }

}
