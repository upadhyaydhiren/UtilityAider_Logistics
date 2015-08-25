/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.UsersIndustryDao;
import com.utilaider.logistics.domain.UsersIndustry;
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
public class UsersIndustryServiceImpl implements UsersIndustryService {

    @Autowired
    UsersIndustryDao usersIndustryDao;

    @Override
    public boolean insertUsersIndustry(UsersIndustry industry) throws Exception {
        return usersIndustryDao.insertUsersIndustry(industry);
    }

    @Override
    public boolean updateUsersIndustry(UsersIndustry industry) throws Exception {
        return usersIndustryDao.updateUsersIndustry(industry);
    }

    @Override
    public boolean deleteUsersIndustry(UsersIndustry industry) throws Exception {
        return usersIndustryDao.deleteUsersIndustry(industry);
    }

    @Override
    public UsersIndustry getUsersIndustryById(Integer id) throws Exception {
        return usersIndustryDao.getUsersIndustryById(id);
    }

    @Override
    public List<UsersIndustry> getAllUsersIndustrys() throws Exception {
        return usersIndustryDao.getAllUsersIndustrys();
    }

    @Override
    public List<UsersIndustry> getAllUsersIndustrysByUserId(Integer id) throws Exception {
        return usersIndustryDao.getAllUsersIndustrysByUserId(id);
    }

}
