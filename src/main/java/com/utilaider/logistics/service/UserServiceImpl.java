/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.UserEntityDao;
import com.utilaider.logistics.domain.UserEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Service
@Transactional
public class UserServiceImpl implements UserEntityService {

    @Autowired
    UserEntityDao userEntityDao;

    @Override
    public boolean insertUserEntity(UserEntity userEntity) throws Exception {
        return userEntityDao.insertUserEntity(userEntity);
    }

    @Override
    public boolean updateUserEnity(UserEntity userEntity) throws Exception {
        return userEntityDao.updateUserEnity(userEntity);
    }

    @Override
    public UserEntity getUserEntityById(Integer id) throws Exception {
        return userEntityDao.getUserEntityById(id);
    }

    @Override
    public List<UserEntity> getAllUserEntitys() throws Exception {
        return userEntityDao.getAllUserEntitys();
    }

}
