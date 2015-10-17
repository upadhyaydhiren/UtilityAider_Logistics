/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Owner;

/**
 *
 * @author SARJIT Edited by @author DHIREN
 */
public interface OwnerDao extends GenericDao<Long, Owner> {

    public Owner getUserDetailsByUsername(String username) throws Exception;
}
