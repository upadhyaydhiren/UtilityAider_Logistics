/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Role;
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
public class RoleDaoImpl extends GenericDaoImpl<Integer, Role> implements RoleDao {

    @Override
    public void saveIntialAllRole(List<Role> roles) throws Exception {
        long rowCount = ((Long) getSession().createCriteria(Role.class).setProjection(Projections.rowCount()).uniqueResult());
        if (rowCount == 0) {
            for (Role role : roles) {
                getSession().save(role);
                getSession().evict(role);
            }
        }
    }
}
