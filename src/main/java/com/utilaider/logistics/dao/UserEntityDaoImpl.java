/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.UserEntity;
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
public class UserEntityDaoImpl implements UserEntityDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public boolean insertUserEntity(UserEntity userEntity) throws Exception {
        sessionFactory.getCurrentSession().save(userEntity);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(userEntity) > 0;
    }

    @Override
    public boolean updateUserEnity(UserEntity userEntity) throws Exception {
        sessionFactory.getCurrentSession().update(userEntity);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(userEntity) > 0;
    }

    @Override
    public UserEntity getUserEntityById(Integer id) throws Exception {
        return (UserEntity) sessionFactory.getCurrentSession().get(UserEntity.class, id);
    }

    @Override
    public List<UserEntity> getAllUserEntitys() throws Exception {
        return sessionFactory.getCurrentSession().createCriteria(UserEntity.class).list();
    }

}
