/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.StaticBasicUserEntityDao;
import com.utilaider.logistics.domain.StaticBasicUserEntity;
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
public class StaticBasicUserEntityserviceImpl implements StaticBasicUserEntityService {

    @Autowired
    StaticBasicUserEntityDao basicUserEntityDao;

    @Override
    public boolean insert(StaticBasicUserEntity userEntity) throws Exception {
        return basicUserEntityDao.insert(userEntity);
    }

    @Override
    public boolean update(StaticBasicUserEntity userEntity) throws Exception {
        return basicUserEntityDao.update(userEntity);
    }

    @Override
    public boolean delete(StaticBasicUserEntity userEntity) throws Exception {
        return basicUserEntityDao.delete(userEntity);
    }

    @Override
    public StaticBasicUserEntity getStaticBasicUserEntityById(Integer id) throws Exception {
        return basicUserEntityDao.getStaticBasicUserEntityById(id);
    }

    @Override
    public List<StaticBasicUserEntity> getAllStaticBasicUserEntitys() throws Exception {
        return basicUserEntityDao.getAllStaticBasicUserEntitys();
    }

}
