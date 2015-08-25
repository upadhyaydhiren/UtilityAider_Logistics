/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.StaticBasicUserEntity;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Repository
@Transactional
public class StaticBasicUserEntityDaoImpl implements StaticBasicUserEntityDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public boolean insert(StaticBasicUserEntity userEntity) throws Exception {
        sessionFactory.getCurrentSession().save(userEntity);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(userEntity) > 0;
    }

    @Override
    public boolean update(StaticBasicUserEntity userEntity) throws Exception {
        sessionFactory.getCurrentSession().update(userEntity);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(userEntity) > 0;
    }

    @Override
    public boolean delete(StaticBasicUserEntity userEntity) throws Exception {
        sessionFactory.getCurrentSession().delete(userEntity);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(userEntity) > 0;
    }

    @Override
    public StaticBasicUserEntity getStaticBasicUserEntityById(Integer id) throws Exception {
        return (StaticBasicUserEntity) sessionFactory.getCurrentSession().get(StaticBasicUserEntity.class, id);
    }

    @Override
    public List<StaticBasicUserEntity> getAllStaticBasicUserEntitys() throws Exception {
        return sessionFactory.getCurrentSession().createCriteria(StaticBasicUserEntity.class).list();
    }

}
