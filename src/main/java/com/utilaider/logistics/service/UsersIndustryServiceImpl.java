/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.GenericDao;
import com.utilaider.logistics.dao.UsersIndustryDao;
import com.utilaider.logistics.domain.UsersIndustry;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Service
@Transactional
public class UsersIndustryServiceImpl extends GenericServiceImpl<Integer, UsersIndustry> implements UsersIndustryService {

    private UsersIndustryDao usersIndustryDao;

    public UsersIndustryServiceImpl() {
    }

    @Autowired
    public UsersIndustryServiceImpl(@Qualifier("usersIndustryDaoImpl") GenericDao<Integer, UsersIndustry> genericDao) {
        super(genericDao);
        this.usersIndustryDao = (UsersIndustryDao) genericDao;
    }

    @Override
    public List<UsersIndustry> getAllUsersIndustrysByUserId(Integer id) throws Exception {
        return usersIndustryDao.getAllUsersIndustrysByUserId(id);
    }

}
