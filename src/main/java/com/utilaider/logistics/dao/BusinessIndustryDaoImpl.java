/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.BusinessIndustry;
import java.util.List;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhiren
 */
@Repository
@Transactional
public class BusinessIndustryDaoImpl extends GenericDaoImpl<Integer, BusinessIndustry> implements BusinessIndustryDao {

    @Override
    public void saveIntialAllIndustry(List<BusinessIndustry> businessIndustrys) throws Exception {
        long rowCount = ((Long) getSession().createCriteria(BusinessIndustry.class).setProjection(Projections.rowCount()).uniqueResult());
        if (rowCount == 0) {
            for (BusinessIndustry businessIndustry : businessIndustrys) {
                getSession().save(businessIndustry);
                getSession().evict(businessIndustry);
            }
        }
    }

}
