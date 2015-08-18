/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.BusinessIndustry;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Repository
@Transactional
public class BusinessIndustryDaoImpl implements BusinessIndustryDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public boolean insert(BusinessIndustry businessIndustry) throws Exception {
        sessionFactory.getCurrentSession().save(businessIndustry);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(businessIndustry) > 0;
    }

    @Override
    public boolean update(BusinessIndustry businessIndustry) throws Exception {
        sessionFactory.getCurrentSession().update(businessIndustry);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(businessIndustry) > 0;
    }

    @Override
    public boolean delete(BusinessIndustry businessIndustry) throws Exception {
        sessionFactory.getCurrentSession().delete(businessIndustry);
        return (Integer) sessionFactory.getCurrentSession().getIdentifier(businessIndustry) > 0;
    }

    @Override
    public BusinessIndustry getBusinessIndustryById(Integer id) throws Exception {
        return (BusinessIndustry) sessionFactory.getCurrentSession().get(BusinessIndustry.class, id);
    }

    @Override
    public List<BusinessIndustry> getAllBusinessIndustrys() throws Exception {
        return sessionFactory.getCurrentSession().createCriteria(BusinessIndustry.class).list();
    }

}
