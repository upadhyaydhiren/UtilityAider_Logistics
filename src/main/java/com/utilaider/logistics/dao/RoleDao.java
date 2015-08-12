/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Role;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface RoleDao {

    public boolean insertRole(Role role) throws Exception;

    public void updateRole(Role role) throws Exception;

    public void deleteRole(Role role) throws Exception;

    public Role getRoleById(Integer id) throws Exception;

    public List<Role> getRoles() throws Exception;
}
