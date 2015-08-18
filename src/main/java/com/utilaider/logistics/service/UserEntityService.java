/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.UserEntity;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface UserEntityService {

    public boolean insertUserEntity(UserEntity userEntity) throws Exception;

    public boolean updateUserEnity(UserEntity userEntity) throws Exception;

    public UserEntity getUserEntityById(Integer id) throws Exception;

    public List<UserEntity> getAllUserEntitys() throws Exception;
}
