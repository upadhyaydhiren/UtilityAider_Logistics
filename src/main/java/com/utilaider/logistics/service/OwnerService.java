/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.Owner;

/**
 *
 * @author SARJIT Edited by @author DHIREN
 */
public interface OwnerService extends GenericService<Long, Owner> {

    public Owner getOwnerByUsername(String username) throws Exception;
}
