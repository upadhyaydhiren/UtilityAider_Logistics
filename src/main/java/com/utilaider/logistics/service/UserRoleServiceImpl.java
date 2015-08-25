/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.UserRoleDao;
import com.utilaider.logistics.domain.UserRole;
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
public class UserRoleServiceImpl implements UserRoleService {

    @Autowired
    UserRoleDao roleDao;

    @Override
    public boolean insertRole(UserRole role) throws Exception {
        return roleDao.insertRole(role);
    }

    @Override
    public boolean updateRole(UserRole role) throws Exception {
        return roleDao.updateRole(role);
    }

    @Override
    public boolean deleteRole(UserRole role) throws Exception {
        return roleDao.deleteRole(role);
    }

    @Override
    public UserRole getRoleById(Integer id) throws Exception {
        return roleDao.getRoleById(id);
    }

    @Override
    public List<UserRole> getRoles() throws Exception {
        return roleDao.getRoles();
    }

}
