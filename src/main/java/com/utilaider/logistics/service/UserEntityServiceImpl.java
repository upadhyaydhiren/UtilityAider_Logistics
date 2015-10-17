/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.GenericDao;
import com.utilaider.logistics.domain.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Service
@Transactional
public class UserEntityServiceImpl extends GenericServiceImpl<Integer, UserEntity> implements UserEntityService {

    public UserEntityServiceImpl() {
    }

    @Autowired
    public UserEntityServiceImpl(@Qualifier("userEntityDaoImpl") GenericDao<Integer, UserEntity> genericDao) {
        super(genericDao);
    }

}
