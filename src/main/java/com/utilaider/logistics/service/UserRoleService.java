/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.UserRole;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface UserRoleService {

    public boolean insertRole(UserRole role) throws Exception;

    public boolean updateRole(UserRole role) throws Exception;

    public boolean deleteRole(UserRole role) throws Exception;

    public UserRole getRoleById(Integer id) throws Exception;

    public List<UserRole> getRoles() throws Exception;
}
