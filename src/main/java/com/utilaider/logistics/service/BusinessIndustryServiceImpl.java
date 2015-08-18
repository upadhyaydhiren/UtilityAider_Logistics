/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.BusinessIndustryDao;
import com.utilaider.logistics.domain.BusinessIndustry;
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
public class BusinessIndustryServiceImpl implements BusinessIndustryService {

    @Autowired
    BusinessIndustryDao businessIndustryDao;

    @Override
    public boolean insert(BusinessIndustry businessIndustry) throws Exception {
        return businessIndustryDao.insert(businessIndustry);
    }

    @Override
    public boolean update(BusinessIndustry businessIndustry) throws Exception {
        return businessIndustryDao.update(businessIndustry);
    }

    @Override
    public boolean delete(BusinessIndustry businessIndustry) throws Exception {
        return businessIndustryDao.delete(businessIndustry);
    }

    @Override
    public BusinessIndustry getBusinessIndustryById(Integer id) throws Exception {
        return businessIndustryDao.getBusinessIndustryById(id);
    }

    @Override
    public List<BusinessIndustry> getAllBusinessIndustrys() throws Exception {
        return businessIndustryDao.getAllBusinessIndustrys();
    }

}
