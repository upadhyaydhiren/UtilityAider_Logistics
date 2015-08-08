/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.OwnerDao;
import com.utilaider.logistics.domain.Owner;
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
public class OwnerServiceImpl implements OwnerService {

    @Autowired
    OwnerDao ownerDao;

    @Override
    public LinkedList<Owner> getAllOwner() throws Exception {
        return ownerDao.getAllOwner();
    }

    @Override
    public boolean insertOwner(Owner ownerObj) throws Exception {
        return ownerDao.insertOwner(ownerObj);
    }

    @Override
    public void updateOwner(Owner ownerObj) throws Exception {
        ownerDao.updateOwner(ownerObj);
    }

    @Override
    public void deleteOwner(Owner ownerObj) throws Exception {
        ownerDao.deleteOwner(ownerObj);
    }

    @Override
    public Owner getOwner(Long ownerId) throws Exception {
        return ownerDao.getOwner(ownerId);
    }

    @Override
    public Owner getOwnerByUsername(String username) throws Exception {
        return ownerDao.getUserDetailsByUsername(username);
    }
}
