/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Role;
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
public class RoleDaoImpl implements RoleDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public boolean insertRole(Role role) throws Exception {
        sessionFactory.getCurrentSession().save(role);
        return role.getRoleId() > 0;
    }

    @Override
    public void updateRole(Role role) throws Exception {
        sessionFactory.getCurrentSession().update(role);
    }

    @Override
    public void deleteRole(Role role) throws Exception {
        sessionFactory.getCurrentSession().delete(role);
    }

    @Override
    public Role getRoleById(Integer id) throws Exception {
        return (Role) sessionFactory.getCurrentSession().get(Role.class, id);
    }

    @Override
    public List<Role> getRoles() throws Exception {
        return sessionFactory.getCurrentSession().createCriteria(Role.class).list();
    }

}
