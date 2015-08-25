/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.UsersIndustry;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Repository
@Transactional
public class UsersIndustryDaoImpl implements UsersIndustryDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public boolean insertUsersIndustry(UsersIndustry industry) throws Exception {
        sessionFactory.getCurrentSession().save(industry);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(industry) > 0;
    }

    @Override
    public boolean updateUsersIndustry(UsersIndustry industry) throws Exception {
        sessionFactory.getCurrentSession().update(industry);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(industry) > 0;
    }

    @Override
    public boolean deleteUsersIndustry(UsersIndustry industry) throws Exception {
        sessionFactory.getCurrentSession().delete(industry);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(industry) > 0;
    }

    @Override
    public UsersIndustry getUsersIndustryById(Integer id) throws Exception {
        return (UsersIndustry) sessionFactory.getCurrentSession().get(UsersIndustry.class, id);
    }

    @Override
    public List<UsersIndustry> getAllUsersIndustrys() throws Exception {
        return sessionFactory.getCurrentSession().createCriteria(UsersIndustry.class).list();
    }

    @Override
    public List<UsersIndustry> getAllUsersIndustrysByUserId(Integer id) throws Exception {
        return sessionFactory.getCurrentSession().createCriteria(UsersIndustry.class).add(Restrictions.eq("user.id", id)).list();
    }

}
