/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Owner;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SARJIT
 */
@Repository
@Transactional
public class OwnerDaoImpl extends GenericDaoImpl<Long, Owner> implements OwnerDao {

    @Override
    public Owner getUserDetailsByUsername(String username) throws Exception {
        Criteria criteria = getSession().createCriteria(Owner.class);
        if (username.contains("@")) {
            criteria.add(Restrictions.eq("email", username));
        } else {
            criteria.add(Restrictions.eq("mobile", username));
        }
        return (Owner) criteria.uniqueResult();
    }
}
