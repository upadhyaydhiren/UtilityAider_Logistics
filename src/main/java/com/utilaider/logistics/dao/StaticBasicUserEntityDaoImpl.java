/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.StaticBasicUserEntity;
import java.util.List;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Repository
@Transactional
public class StaticBasicUserEntityDaoImpl extends GenericDaoImpl<Integer, StaticBasicUserEntity> implements StaticBasicUserEntityDao {

    @Override
    public void saveIntialUserEntity(List<StaticBasicUserEntity> staticBasicUserEntitys) throws Exception {
        long rowCount = ((Long) getSession().createCriteria(StaticBasicUserEntity.class).setProjection(Projections.rowCount()).uniqueResult());
        if (rowCount == 0) {
            for (StaticBasicUserEntity staticBasicUserEntity : staticBasicUserEntitys) {
                getSession().save(staticBasicUserEntity);
                getSession().evict(staticBasicUserEntity);
            }
        }
    }

}
