/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.Owner;
import java.util.LinkedList;

/**
 *
 * @author SARJIT Edited by @author DHIREN
 */
public interface OwnerService {

    public LinkedList<Owner> getAllOwner() throws Exception;

    public Owner getOwner(Long ownerId) throws Exception;

    public boolean insertOwner(Owner ownerObj) throws Exception;

    public boolean updateOwner(Owner ownerObj) throws Exception;

    public boolean deleteOwner(Owner ownerObj) throws Exception;

    public Owner getOwnerByUsername(String username) throws Exception;
}
