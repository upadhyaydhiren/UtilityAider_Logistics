/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.UsersIndustry;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface UsersIndustryDao {

    public boolean insertUsersIndustry(UsersIndustry industry) throws Exception;

    public boolean updateUsersIndustry(UsersIndustry industry) throws Exception;

    public boolean deleteUsersIndustry(UsersIndustry industry) throws Exception;

    public UsersIndustry getUsersIndustryById(Integer id) throws Exception;

    public List<UsersIndustry> getAllUsersIndustrys() throws Exception;

    public List<UsersIndustry> getAllUsersIndustrysByUserId(Integer id) throws Exception;
}
