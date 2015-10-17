/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.UsersIndustry;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface UsersIndustryService extends GenericService<Integer, UsersIndustry> {

    public List<UsersIndustry> getAllUsersIndustrysByUserId(Integer id) throws Exception;
}
