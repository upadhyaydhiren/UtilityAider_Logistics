/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.GenericDao;
import com.utilaider.logistics.dao.OwnerDao;
import com.utilaider.logistics.domain.Owner;
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
public class OwnerServiceImpl extends GenericServiceImpl<Long, Owner> implements OwnerService {

    private OwnerDao ownerDao;

    public OwnerServiceImpl() {

    }

    @Autowired
    public OwnerServiceImpl(@Qualifier("ownerDaoImpl") GenericDao<Long, Owner> genericDao) {
        super(genericDao);
        this.ownerDao = (OwnerDao) genericDao;
    }

    @Override
    public Owner getOwnerByUsername(String username) throws Exception {
        return ownerDao.getUserDetailsByUsername(username);
    }
}
