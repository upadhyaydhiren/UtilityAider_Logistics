/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.StaticBasicUserEntity;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface StaticBasicUserEntityDao {

    public boolean insert(StaticBasicUserEntity userEntity) throws Exception;

    public boolean update(StaticBasicUserEntity userEntity) throws Exception;

    public boolean delete(StaticBasicUserEntity userEntity) throws Exception;

    public StaticBasicUserEntity getStaticBasicUserEntityById(Integer id) throws Exception;

    public List<StaticBasicUserEntity> getAllStaticBasicUserEntitys() throws Exception;
}
