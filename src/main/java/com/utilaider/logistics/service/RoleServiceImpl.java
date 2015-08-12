/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.RoleDao;
import com.utilaider.logistics.domain.Role;
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
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleDao roleDao;

    @Override
    public boolean insertRole(Role role) throws Exception {
        return roleDao.insertRole(role);
    }

    @Override
    public void updateRole(Role role) throws Exception {
        roleDao.updateRole(role);
    }

    @Override
    public void deleteRole(Role role) throws Exception {
        roleDao.deleteRole(role);
    }

    @Override
    public Role getRoleById(Integer id) throws Exception {
        return roleDao.getRoleById(id);
    }

    @Override
    public List<Role> getRoles() throws Exception {
        return roleDao.getRoles();
    }

}
