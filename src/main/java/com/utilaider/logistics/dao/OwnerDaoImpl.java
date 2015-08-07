/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Owner;
import java.util.LinkedList;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SARJIT
 */
@Repository
public class OwnerDaoImpl implements OwnerDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public LinkedList<Owner> getAllOwner() throws Exception {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Owner.class);
        return new LinkedList<>(criteria.list());
    }

    @Override
    public boolean insertOwner(Owner ownerObj) throws Exception {
        Long ownerId = (Long) sessionFactory.getCurrentSession().save(ownerObj);
        return ownerId > 0;
    }

    @Override
    public void updateOwner(Owner ownerObj) throws Exception {
        sessionFactory.getCurrentSession().update(ownerObj);
    }

    @Override
    public void deleteOwner(Owner ownerObj) throws Exception {
        sessionFactory.getCurrentSession().delete(ownerObj);
    }

    @Override
    public Owner getOwner(Long ownerId) throws Exception {
        System.out.println(sessionFactory);
        return (Owner) sessionFactory.getCurrentSession().get(Owner.class, ownerId);
    }
}
