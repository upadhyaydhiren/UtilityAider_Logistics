/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.GenericDao;
import com.utilaider.logistics.dao.StaticBasicUserEntityDao;
import com.utilaider.logistics.domain.StaticBasicUserEntity;
import java.util.List;
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
public class StaticBasicUserEntityserviceImpl extends GenericServiceImpl<Integer, StaticBasicUserEntity> implements StaticBasicUserEntityService {
    
    private StaticBasicUserEntityDao staticBasicUserEntityDao;
    
    public StaticBasicUserEntityserviceImpl() {
    }
    
    @Autowired
    public StaticBasicUserEntityserviceImpl(@Qualifier("staticBasicUserEntityDaoImpl") GenericDao<Integer, StaticBasicUserEntity> genericDao) {
        super(genericDao);
        this.staticBasicUserEntityDao = (StaticBasicUserEntityDao) genericDao;
    }
    
    @Override
    public void saveIntialUserEntity(List<StaticBasicUserEntity> staticBasicUserEntitys) throws Exception {
        staticBasicUserEntityDao.saveIntialUserEntity(staticBasicUserEntitys);
    }
    
}
