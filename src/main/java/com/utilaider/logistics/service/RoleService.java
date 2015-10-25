/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.Role;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface RoleService extends GenericService<Integer, Role> {

    public void saveIntialAllRole(List<Role> roles) throws Exception;
}
