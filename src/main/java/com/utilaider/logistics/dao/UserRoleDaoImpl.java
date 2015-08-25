/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.UserRole;
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
public class UserRoleDaoImpl implements UserRoleDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public boolean insertRole(UserRole role) throws Exception {
        sessionFactory.getCurrentSession().save(role);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(role) > 0;
    }

    @Override
    public boolean updateRole(UserRole role) throws Exception {
        sessionFactory.getCurrentSession().update(role);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(role) > 0;
    }

    @Override
    public boolean deleteRole(UserRole role) throws Exception {
        sessionFactory.getCurrentSession().delete(role);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(role) > 0;
    }

    @Override
    public UserRole getRoleById(Integer id) throws Exception {
        return (UserRole) sessionFactory.getCurrentSession().get(UserRole.class, id);
    }

    @Override
    public List<UserRole> getRoles() throws Exception {
        return sessionFactory.getCurrentSession().createCriteria(UserRole.class).list();
    }

}
