/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.UsersIndustry;
import java.util.List;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Repository
@Transactional
public class UsersIndustryDaoImpl extends GenericDaoImpl<Integer, UsersIndustry> implements UsersIndustryDao {

    @Override
    public List<UsersIndustry> getAllUsersIndustrysByUserId(Integer id) throws Exception {
        return getSession().createCriteria(UsersIndustry.class).add(Restrictions.eq("user.id", id)).list();
    }

}
